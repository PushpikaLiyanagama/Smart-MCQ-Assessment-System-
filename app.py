from flask import Flask, render_template, request
import pickle
import numpy as np
import pickle
import pandas as pd
import mysql.connector


model = pickle.load(open('finalModel.pkl','rb'))
enc = pickle.load(open('finalEncoder.pkl','rb'))

df = pd.read_csv("student_Performance.csv")
X = df.drop(labels=['Performance Index'],axis=1)
Y = df[['Performance Index']]

def catconsep(df):
    cat = list(df.columns[df.dtypes=='object'])
    con = list(df.columns[df.dtypes!='object'])
    return cat,con
cat,con = catconsep(df)

cat1,con1 = catconsep(X)
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder, StandardScaler
num_pipe = Pipeline(steps=[('SimpleImputer',SimpleImputer(strategy='mean')),
                           ('Scaler',StandardScaler())])
cat_pipe = Pipeline(steps = [('SimpleImputer', SimpleImputer(strategy='most_frequent')),
                             ('OHE',OneHotEncoder(handle_unknown='ignore'))])
pre = ColumnTransformer([('num',num_pipe,con1),
                        ('cat',cat_pipe,cat1)])
cols = ['num__Hours Studied', 'num__Previous Scores', 'num__Sleep Hours',
       'num__Sample Question Papers Practiced',
       'cat__Extracurricular Activities_No',
       'cat__Extracurricular Activities_Yes']
X_pre1 = pre.fit_transform(X)


# MySQL connection setup 
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="tcc1_database"
)

app = Flask(__name__) # initializing a flask app



@app.route('/',methods=['GET'])  # route to display the home page
def homePage():
    return render_template("input_form.html")


@app.route('/predict',methods=['POST']) 
def index():
    if request.method == 'POST':
        

        hours_studied=int(request.form['hours_studied'])
        previous_scores = int(request.form['previous_scores'])
        extracurricular_activities =request.form['extracurricular_activities']
        sleep_hours = int(request.form['sleep_hours'])
        sample_papers_practiced = int(request.form['sample_papers_practiced'])
        inPut = np.array([[hours_studied,previous_scores,extracurricular_activities,sleep_hours,sample_papers_practiced]])

        inPut_df = pd.DataFrame(inPut, columns=['Hours Studied', 'Previous Scores', 'Extracurricular Activities',
                                                    'Sleep Hours', 'Sample Question Papers Practiced'])

        X_pre = pre.transform(inPut_df)
        X_pre = pd.DataFrame(X_pre, columns=cols)

        model=pickle.load(open('finalModel.pkl','rb'))

        prediction = model.predict(X_pre)
        prediction_level = model.predict(X_pre) // 10

        ##print('prediction is', prediction)


        if 0 <= prediction_level < 2:
            level = 1
        elif 2 <= prediction_level < 4:
            level = 2
        elif 4 <= prediction_level < 6:
            level = 3
        elif 6 <= prediction_level < 8:
            level = 4
        elif 8 <= prediction_level < 10:
            level = 5
        else:
            level = 6

        questions = fetch_questions(level)
        return render_template('quiz.html', questions=questions, level=level)
    return render_template('input_form.html')

def fetch_questions(level):
    mycursor = mydb.cursor()
    query = f"SELECT question, option1, option2, option3, option4, answer FROM level{level}"
    mycursor.execute(query)
    questions = mycursor.fetchall()
    return questions

@app.route('/submit', methods=['POST'])
def submit():
    score = 0
    user_answers = []
    questions = []

    # Get the user's answers
    for key, value in request.form.items():
        if key.startswith('question'):
            user_answers.append(value)
    
    level = int(request.form['level'])
    questions = fetch_questions(level)

    
    if len(questions) != len(user_answers):
        return "Error: Number of questions and submitted answers mismatch."

    # Compare user's answers with correct answers
    for idx, question in enumerate(questions):
        # Check if the index is within the range of user_answers list
        if idx < len(user_answers) and question[5] == user_answers[idx]:
            score += 1
    
    # Prepare lists of submitted and correct answers
    submitted_answers = user_answers
    correct_answers = [question[5] for question in questions]

    # Calculate percentage
    total_questions = len(questions)
    percentage = (score / total_questions) * 100

    return render_template('result.html', score=score, total=total_questions, percentage=percentage,
                           submitted_answers=submitted_answers, correct_answers=correct_answers)



if __name__ == "__main__":
	app.run(debug=True,port=9000) # running the app


