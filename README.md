# Predicting Heart Disease
## Selected Topic
Heart disease data gathered from the Framiningham Heart Study that includes multiple patient health parameters (machine learning model features) and the outcome of whether or not an individual ended up with heart disease after 10 years. The outcome is a binary classification of either "yes" someone developed heart disease or "no" someone did not develop heart disease. 

## Description of Source Data
Data contains a total of 17 columns and 4240 rows. The outcome data currently ranks patients as having no heart disease (0) or as having heart disesase (1).

## Questions to Answer with the Data
1. Do the input variables (health parameters) accuractly predict heart disease (yes/no) without any data preproccesing? 
2. If the answer to question 1 is no: which features provide the most importance to the final outcome. What is the minnimum number of features that can be used in the model to get the most accurate prediction?
3. Will the data benefit from over or undersampling given the difference in outcomes?

## Description of communication protocols
The group will communicate primarily through a group channel on Slack with group members regularly checking for new messages throughout the day. Group members will also email each other when necessary. If needed the group will meet virtually outside of class. 

## Provisional Machine Learning Model 
1. Logistic Regression model using the binary yes/no outcome and all input variables 
2. Random Forrest model and assessment of feature importance 

## Description of data preprocessing
Data was read into Python directly from PostgreSQL. The data was then processed to:
1. Drop the index column, as this column was not necessary in the machine learning model
2. Determine if there were any null/missing (NaN) values present. Both the total number of missing values present in each column and the overall percentage of missing data was calculated (15.21%).
3. Given the relatively low amount of missing data, it was decided to drop any missing data instead of replacing the data with the mean (continuous data) or most frequently occuring (categorical data). 
4. After cleaning the dataset it was determined to keep all patient health-related features (total of 14) for the inital machine learning models. 

## Description of feature engineering and feature selection
All patient health features were kept in first machine learning model (ID was dropped prior to running the models). There were a total of 16 features in the original models. For both Lgoistic Regression and Random Forrest Model features were then ranked based on importance of the model. For Logistic Regression features with less than _______ were dropped from the model and the model was re-trained and tested without those features. 

## Description of how data was split into training and testing sets
Data was split into training and testing sets using a standard 75% to training and 25% to testing. The training and testing sets were also set to stratify to ensure that there was equal representation of the outcomes (Heart disease) in both the training and testing sets.

## Explanation of model choice, including limitations and benefits
The final model chosen was Logistic Regression without the use of features shown to have small importance. While the accuracy for Logistic Regression and the Random Forrest Model were similiar, the recall and precision score for the outcome of heart disease were slightly higher in Logistic Regression. Logistic Regression is also less likely to suffer from overfitting and features are able to be scaled. 

### Logistic Regression benefits:
  - Able to take in multiple features and determine a binary outcome. The positive scores (for feature importance) indicate a feature that predicts class 1, whereas the negative scores indicate a feature that predicts class 0.
  - No assumptions about distributions of features
  - Fast at classifying unknown records
  - Less inclined for overfitting
  - Features do not need to be scaled, however they can be
  
### Logistic Regression limitations:
  - Can be difficult to obtain complex relationships 
  - Can't solve non-linear problems
  - Model constructs linear boundaries
  - There need to be more observations than features
  - Poor performance with irrelevant and highly correlated features
  - High reliance on proper presentation of data
  
### Random Forrest Model benefits:
  - More generalizable and less prone to overfitting
  - Able to extract feature importance, and making changes to feature selection
### Random Forrest Model limitations:
  - features need to have some predictive power
  - Less transparent/more difficult to know what is happening with the model

## Logistic Regression Confusion Matrix and Accuracy Score

## GoogleSlides link
[Click for Google Slides](https://docs.google.com/presentation/d/1zgd_ht6uyIJ8kVkHymmYEqXUR6f8DTbMxfj6EIIAIp0/edit?usp=sharing)

## Tableu Dashboard link
[Click for Tableu Dashboard](https://public.tableau.com/app/profile/conor.corboy/viz/project_one_draft/project_dash_draft)
