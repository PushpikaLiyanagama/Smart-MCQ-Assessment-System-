-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2023 at 03:01 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc1_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `level1`
--

DROP TABLE IF EXISTS `level1`;
CREATE TABLE IF NOT EXISTS `level1` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level1`
--

INSERT INTO `level1` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Which of the following is a statistical technique used for modeling the relationship between a dependent variable and one or more independent variables?', 'a) Linear regression', 'b) Logistic regression', 'c) Decision tree', 'd) K-nearest neighbors', 'a) Linear regression'),
('In linear regression, the dependent variable is also known as the:', 'a) Predictor variable', 'b) Response variable', 'c) Independent variable', 'd) None of the above', 'b) Response variable'),
('In a simple linear regression model, how many independent variables are there?', 'a) None', 'b) One', 'c) Two or more', 'd) It varies depending on the data', 'b) One'),
('Which of the following statements is true about the residuals in linear regression?', 'a) Residuals should be perfectly normally distributed.', 'b) Residuals should have a mean of zero.', 'c) Residuals should have constant variance.', 'd) All of the above', 'd) All of the above'),
('The best-fit line in linear regression is determined by minimizing the sum of the squared:', 'a) Coefficients', 'b) Errors', 'c) Predictions', 'd) Intercept', 'b) Errors'),
('What is the range of values that the coefficient of determination (R-squared) can take?', 'a) 0 to 1', 'b) -1 to 1', 'c) -? to ?', 'd) 0 to ?', 'a) 0 to 1'),
('If the coefficient of determination (R-squared) is 0.75, what does it indicate?', 'a) 75% of the variance in the dependent variable is explained by the independent variable(s).', 'b) 25% of the variance in the dependent variable is explained by the independent variable(s).', 'c) The model is overfitting the data.', 'd) The model is not a good fit for the data.', 'a) 75% of the variance in the dependent variable is explained by the independent variable(s).'),
('Which of the following is a potential problem in linear regression if the independent variables are highly correlated?', 'a) Multicollinearity', 'b) Heteroscedasticity', 'c) Autocorrelation', 'd) Overfitting', 'a) Multicollinearity'),
('Which of the following assumptions is not required for linear regression?', 'a) Linearity', 'b) Independence of observations', 'c) Normality of residuals', 'd) Homoscedasticity', 'b) Independence of observations'),
('What does the p-value associated with a coefficient in linear regression indicate?', 'a) The strength of the relationship between the dependent and independent variables.', 'b) The probability of observing the coefficient if there is no relationship between the variables.', 'c) The standard error of the coefficient estimate.', 'd) The significance of the coefficient in predicting the dependent variable.', 'b) The probability of observing the coefficient if there is no relationship between the variables.');

-- --------------------------------------------------------

--
-- Table structure for table `level2`
--

DROP TABLE IF EXISTS `level2`;
CREATE TABLE IF NOT EXISTS `level2` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level2`
--

INSERT INTO `level2` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Which of the following statements is true about the residual plot in linear regression?', 'a) The residuals should be randomly scattered around zero.', 'b) The residuals should follow a specific pattern.', 'c) The residuals should have a constant mean.', 'd) The residuals should have a uniform distribution.', 'a) The residuals should be randomly scattered around zero.'),
('Which of the following statements is true about the intercept term in linear regression?', 'a) The intercept term represents the average value of the dependent variable.', 'b) The intercept term represents the slope of the regression line.', 'c) The intercept term is always zero.', 'd) The intercept term is not interpretable in linear regression.', 'a) The intercept term represents the average value of the dependent variable.'),
('In linear regression, what is the purpose of standardizing the variables?', 'a) To make the coefficients more interpretable.', 'b) To remove outliers from the data.', 'c) To linearize nonlinear relationships.', 'd) To compare the relative importance of the independent variables.', 'd) To compare the relative importance of the independent variables.'),
('Which of the following techniques can be used to handle heteroscedasticity in linear regression?', 'a) Weighted least squares regression', 'b) Logarithmic transformation', 'c) Box-Cox transformation', 'd) All of the above', 'a) Weighted least squares regression'),
('Which of the following statements is true about the residual sum of squares (RSS) in linear regression?', 'a) The RSS is equal to the coefficient of determination (R-squared).', 'b) The RSS is a measure of the overall fit of the model.', 'c) The RSS is the sum of the squared residuals.', 'd) The RSS is always positive.', 'c) The RSS is the sum of the squared residuals.'),
('Which of the following techniques can be used to handle nonlinearity in linear regression?', 'a) Polynomial regression', 'b) Logarithmic transformation', 'c) Exponential transformation', 'd) All of the above', 'd) All of the above'),
('Which of the following statements is true about the Akaike information criterion (AIC) in linear regression?', 'a) The AIC is used to compare the goodness of fit of different models.', 'b) The AIC is equal to the coefficient of determination (R-squared).', 'c) The AIC penalizes the model for adding unnecessary independent variables.', 'd) The AIC is always positive.', 'a) The AIC is used to compare the goodness of fit of different models.'),
('In linear regression, if the p-value associated with a coefficient is less than the significance level (e.g., 0.05), what can we conclude?', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.', 'b) The coefficient is not significant, and there is no evidence of a relationship between the variables.', 'c) The coefficient is not significant, but there may still be a relationship between the variables.', 'd) The coefficient is significant, but it is not meaningful in predicting the dependent variable.', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.'),
('In linear regression, what is the purpose of residual standard error (RSE)?', 'a) To measure the variability of the dependent variable.', 'b) To measure the strength of the relationship between the variables.', 'c) To measure the accuracy of the coefficient estimates.', 'd) To measure the precision of the predictions.', 'd) To measure the precision of the predictions.'),
('Which of the following statements is true about the method of ordinary least squares (OLS) in linear regression?', 'a) OLS minimizes the sum of absolute errors', 'b) OLS minimizes the sum of squared errors', 'c) OLS minimizes the maximum error.', 'd) OLS is not applicable to linear regression', 'b) OLS minimizes the sum of squared errors');

-- --------------------------------------------------------

--
-- Table structure for table `level3`
--

DROP TABLE IF EXISTS `level3`;
CREATE TABLE IF NOT EXISTS `level3` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level3`
--

INSERT INTO `level3` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('In linear regression, which of the following methods can be used for feature selection?', 'a) Forward selection', 'b) Backward elimination', 'c) Stepwise selection', 'd) All of the above', 'd) All of the above'),
('Which of the following statements is true about the assumptions of linear regression?', 'a) Violation of assumptions always leads to inaccurate predictions.', 'b) Violation of assumptions always leads to biased coefficient estimates.', 'c) Violation of assumptions may affect the reliability of the model\'s predictions.', 'd) Linear regression does not make any assumptions.', 'c) Violation of assumptions may affect the reliability of the model\'s predictions.'),
('Which of the following is not a common metric used to evaluate the performance of a linear regression model?', 'a) Mean squared error (MSE)', 'b) R-squared (coefficient of determination)', 'c) F-test statistic', 'd) Accuracy score', 'd) Accuracy score'),
('Which of the following statements is true about influential points in linear regression?', 'a) Influential points always have a high leverage.', 'b) Influential points always have a large residual.', 'c) Influential points can have a significant impact on the regression line.', 'd) Influential points are always outliers.', 'c) Influential points can have a significant impact on the regression line.'),
('In linear regression, what is the purpose of transforming the variables?\n', 'a) To make the data easier to visualize.', 'b) To linearize nonlinear relationships.', 'c) To standardize the variables.', 'd) To remove outliers from the data.', 'b) To linearize nonlinear relationships.'),
('Which of the following is a common assumption of linear regression?', 'a) The dependent variable must be categorical.', 'b) The independent variables must be normally distributed.', 'c) The residuals must be normally distributed.', 'd) The model must have a high R-squared value.', 'c) The residuals must be normally distributed.'),
('Which of the following statements is true about ridge regression?', 'a) Ridge regression adds a penalty term to the sum of squared errors to shrink the coefficients.', 'b) Ridge regression is used when there is multicollinearity among the independent variables.', 'c) Ridge regression always produces a better fit than ordinary least squares regression.', 'd) Ridge regression can only handle continuous dependent variables.', 'a) Ridge regression adds a penalty term to the sum of squared errors to shrink the coefficients.'),
('Which of the following statements is true about Lasso regression?', 'a) Lasso regression adds a penalty term to the sum of squared errors to shrink the coefficients.', 'b) Lasso regression is used when there is heteroscedasticity in the residuals.', 'c) Lasso regression always produces a better fit than ordinary least squares regression.', 'd) Lasso regression can handle both continuous and categorical independent variables.', 'a) Lasso regression adds a penalty term to the sum of squared errors to shrink the coefficients.'),
('Which of the following statements is true about the gradient descent algorithm?', 'a) Gradient descent is an optimization algorithm used to find the coefficients in linear regression.', 'b) Gradient descent is guaranteed to find the global minimum of the sum of squared errors.', 'c) Gradient descent requires the calculation of the Hessian matrix.', 'd) Gradient descent is only applicable to simple linear regression.', 'a) Gradient descent is an optimization algorithm used to find the coefficients in linear regression.'),
('Which of the following statements is true about the method of least squares?\n', 'a) The method of least squares minimizes the sum of absolute errors.', 'b) The method of least squares minimizes the sum of squared errors.', 'c) The method of least squares minimizes the maximum error.', 'd) The method of least squares is not applicable to linear regression.', 'b) The method of least squares minimizes the sum of squared errors.');

-- --------------------------------------------------------

--
-- Table structure for table `level4`
--

DROP TABLE IF EXISTS `level4`;
CREATE TABLE IF NOT EXISTS `level4` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level4`
--

INSERT INTO `level4` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Which of the following is true about the assumption of linearity in linear regression?', 'a) It means that the relationship between the variables must be a perfect straight line.', 'b) It means that the relationship between the variables must be a linear function.', 'c) It means that the relationship between the variables must be a monotonic function.', 'd) It means that the relationship between the variables must be a quadratic function.', 'b) It means that the relationship between the variables must be a linear function.'),
('Which of the following statements is true about the coefficient estimates in linear regression?', 'a) The coefficient estimates are unbiased.', 'b) The coefficient estimates are always positive', 'c) The coefficient estimates are always integers.', 'd) The coefficient estimates are always between 0 and 1', 'a) The coefficient estimates are unbiased.'),
('Which of the following is a potential problem in linear regression if the residuals have a funnel shape in a residual plot?', 'a) Multicollinearity', 'b) Heteroscedasticity', 'c) Autocorrelation', 'd) Overfitting', 'b) Heteroscedasticity'),
('Which of the following statements is true about the coefficient of determination (R-squared) in linear regression?', 'a) R-squared can be negative.', 'b) R-squared can be greater than 1.', 'c) R-squared can be less than 0.', 'd) R-squared is always between 0 and 1.', 'd) R-squared is always between 0 and 1.'),
('Which of the following is a potential problem in linear regression if the residuals show a pattern over time in a residual plot?\n', 'a) Multicollinearity', 'b) Heteroscedasticity', 'c) Autocorrelation', 'd) Overfitting', 'c) Autocorrelation'),
('Which of the following statements is true about the p-value associated with a coefficient in linear regression?', 'a) A low p-value indicates that the coefficient is significant.', 'b) A high p-value indicates that the coefficient is significant.', 'c) The p-value indicates the magnitude of the coefficient.', 'd) The p-value indicates the strength of the relationship between the variables.', 'a) A low p-value indicates that the coefficient is significant.'),
('Which of the following statements is true about the adjusted R-squared in linear regression?', 'a) Adjusted R-squared always decreases when additional independent variables are added to the model.', 'b) Adjusted R-squared always increases when additional independent variables are added to the model.', 'c) Adjusted R-squared penalizes the model for adding unnecessary independent variables.', 'd) Adjusted R-squared is equal to the coefficient of determination (R-squared).', 'c) Adjusted R-squared penalizes the model for adding unnecessary independent variables.'),
('Which of the following statements is true about the assumption of homoscedasticity in linear regression?', 'a) It means that the residuals should have a constant variance.', 'b) It means that the residuals should have a decreasing variance.', 'c) It means that the residuals should have an increasing variance.', 'd) It means that the residuals should have a zero variance.', 'a) It means that the residuals should have a constant variance.'),
('Which of the following statements is true about the F-test in linear regression?', 'a) The F-test is used to test the significance of individual coefficients.', 'b) The F-test is used to test for multicollinearity.', 'c) The F-test is used to test the significance of the overall model.', 'd) The F-test is used to check for heteroscedasticity.', 'c) The F-test is used to test the significance of the overall model.'),
('Which of the following is true about the assumption of independence of observations in linear regression?\n', 'a) It means that the observations should be independent of each other.', 'b) It means that the observations should be normally distributed.', 'c) It means that the dependent variable should be normally distributed.', 'd) It means that the dependent variable should have a linear relationship with the independent variable.', 'a) It means that the observations should be independent of each other.');

-- --------------------------------------------------------

--
-- Table structure for table `level5`
--

DROP TABLE IF EXISTS `level5`;
CREATE TABLE IF NOT EXISTS `level5` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level5`
--

INSERT INTO `level5` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Which of the following techniques can be used to handle multicollinearity in linear regression?', 'a) Principal component analysis (PCA)', 'b) Ridge regression', 'c) Lasso regression', 'd) All of the above', 'd) All of the above'),
('Which of the following statements is true about the residual plot in linear regression?', 'a) The residuals should be randomly scattered around zero.', 'b) The residuals should follow a specific pattern.', 'c) The residuals should have a constant mean.', 'd) The residuals should have a uniform distribution.', 'a) The residuals should be randomly scattered around zero.'),
('Which of the following statements is true about the intercept term in linear regression?', 'a) The intercept term represents the average value of the dependent variable.', 'b) The intercept term represents the slope of the regression line.', 'c) The intercept term is always zero.', 'd) The intercept term is not interpretable in linear regression.', 'a) The intercept term represents the average value of the dependent variable.'),
('In linear regression, what is the purpose of standardizing the variables?', 'a) To make the coefficients more interpretable.', 'b) To remove outliers from the data.', 'c) To linearize nonlinear relationships.', 'd) To compare the relative importance of the independent variables.', 'd) To compare the relative importance of the independent variables.'),
('Which of the following techniques can be used to handle heteroscedasticity in linear regression?', 'a) Weighted least squares regression', 'b) Logarithmic transformation', 'c) Box-Cox transformation', 'd) All of the above', 'a) Weighted least squares regression'),
('Which of the following statements is true about the residual sum of squares (RSS) in linear regression?', 'a) The RSS is equal to the coefficient of determination (R-squared).', 'b) The RSS is a measure of the overall fit of the model.', 'c) The RSS is the sum of the squared residuals.', 'd) The RSS is always positive.', 'c) The RSS is the sum of the squared residuals.'),
('Which of the following techniques can be used to handle nonlinearity in linear regression?', 'a) Polynomial regression', 'b) Logarithmic transformation', 'c) Exponential transformation', 'd) All of the above', 'd) All of the above'),
('Which of the following statements is true about the Akaike information criterion (AIC) in linear regression?\n', 'a) The AIC is used to compare the goodness of fit of different models.', 'b) The AIC is equal to the coefficient of determination (R-squared).', 'c) The AIC penalizes the model for adding unnecessary independent variables.', 'd) The AIC is always positive.', 'a) The AIC is used to compare the goodness of fit of different models.'),
('In linear regression, if the p-value associated with a coefficient is less than the significance level (e.g., 0.05), what can we conclude?', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.', 'b) The coefficient is not significant, and there is no evidence of a relationship between the variables.', 'c) The coefficient is not significant, but there may still be a relationship between the variables.', 'd) The coefficient is significant, but it is not meaningful in predicting the dependent variable.', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.'),
('In linear regression, what is the purpose of residual standard error (RSE)?', 'a) To measure the variability of the dependent variable.', 'b) To measure the strength of the relationship between the variables.', 'c) To measure the accuracy of the coefficient estimates.', 'd) To measure the precision of the predictions.', 'd) To measure the precision of the predictions.');

-- --------------------------------------------------------

--
-- Table structure for table `level6`
--

DROP TABLE IF EXISTS `level6`;
CREATE TABLE IF NOT EXISTS `level6` (
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level6`
--

INSERT INTO `level6` (`question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('Which of the following statements is true about the residual plot in linear regression?', 'a) The residuals should be randomly scattered around zero.', 'b) The residuals should follow a specific pattern.', 'c) The residuals should have a constant mean.', 'd) The residuals should have a uniform distribution.', 'a) The residuals should be randomly scattered around zero.'),
('Which of the following statements is true about the intercept term in linear regression?', 'a) The intercept term represents the average value of the dependent variable.', 'b) The intercept term represents the slope of the regression line.', 'c) The intercept term is always zero.', 'd) The intercept term is not interpretable in linear regression.', 'a) The intercept term represents the average value of the dependent variable.'),
('In linear regression, what is the purpose of standardizing the variables?', 'a) To make the coefficients more interpretable.', 'b) To remove outliers from the data.', 'c) To linearize nonlinear relationships.', 'd) To compare the relative importance of the independent variables.', 'd) To compare the relative importance of the independent variables.'),
('Which of the following techniques can be used to handle heteroscedasticity in linear regression?', 'a) Weighted least squares regression', 'b) Logarithmic transformation', 'c) Box-Cox transformation', 'd) All of the above', 'a) Weighted least squares regression'),
('Which of the following statements is true about the residual sum of squares (RSS) in linear regression?', 'a) The RSS is equal to the coefficient of determination (R-squared).', 'b) The RSS is a measure of the overall fit of the model.', 'c) The RSS is the sum of the squared residuals.', 'd) The RSS is always positive.', 'c) The RSS is the sum of the squared residuals.'),
('Which of the following techniques can be used to handle nonlinearity in linear regression?', 'a) Polynomial regression', 'b) Logarithmic transformation', 'c) Exponential transformation', 'd) All of the above', 'd) All of the above'),
('Which of the following statements is true about the Akaike information criterion (AIC) in linear regression?', 'a) The AIC is used to compare the goodness of fit of different models.', 'b) The AIC is equal to the coefficient of determination (R-squared).', 'c) The AIC penalizes the model for adding unnecessary independent variables.', 'd) The AIC is always positive.', 'a) The AIC is used to compare the goodness of fit of different models.'),
('In linear regression, if the p-value associated with a coefficient is less than the significance level (e.g., 0.05), what can we conclude?', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.', 'b) The coefficient is not significant, and there is no evidence of a relationship between the variables.', 'c) The coefficient is not significant, but there may still be a relationship between the variables.', 'd) The coefficient is significant, but it is not meaningful in predicting the dependent variable.', 'a) The coefficient is significant, and there is evidence of a relationship between the variables.'),
('In linear regression, what is the purpose of residual standard error (RSE)?', 'a) To measure the variability of the dependent variable.', 'b) To measure the strength of the relationship between the variables.', 'c) To measure the accuracy of the coefficient estimates.', 'd) To measure the precision of the predictions.', 'd) To measure the precision of the predictions.'),
('Which of the following statements is true about the method of ordinary least squares (OLS) in linear regression?', 'a) OLS minimizes the sum of absolute errors', 'b) OLS minimizes the sum of squared errors', 'c) OLS minimizes the maximum error.', 'd) OLS is not applicable to linear regression', 'b) OLS minimizes the sum of squared errors');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
