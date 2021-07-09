# Predicting Heart Disease
## Selected Topic
Heart disease data gathered from the Framiningham Heart Study that includes multiple patient health parameters (machine learning model features) and the outcome of whether or not an individual ended up with heart disease. The outcome is a binary classification of either "yes" someone developed heart disease or "no" someone did not develop heart disease. 

## Description of Source Data
A total of 2 datasets (Framingham Heart Study dataset from Kaggle and similar data from the National Heart, Lung and Blood Institute) were combined to create the final dataset used for machine learning. The final dataset contains a total of 16 columns and 11191 rows. The outcome data currently ranks patients as having no heart disease (0) or as having heart disesase (1).

## Questions to Answer with the Data
1. Do the input variables (health parameters) accuractly predict heart disease (yes/no) without any data preproccesing? 
2. If the answer to question 1 is no: which features provide the most importance to the final outcome. What is the minnimum number of features that can be used in the model to get the most accurate prediction?
3. Will the data benefit from over or undersampling given the difference in outcomes?

## Description of communication protocols
The group will communicate primarily through a group channel on Slack with group members regularly checking for new messages throughout the day. Group members will also email each other when necessary. If needed the group will meet virtually outside of class. 

## Provisional Machine Learning Model 
1. Logistic Regression model using CHD as the outcome and feature importance.   
2. Random Forrest model and assessment of feature importance 

## Description of data preprocessing
Data was read into Python directly from PostgreSQL. The data was then processed to:
1. Drop the index column, as this column was not necessary in the machine learning model
2. Determine if there were any null/missing (NaN) values present. Both the total number of missing values present in each column and the overall percentage of missing data was calculated.
3. Given the low to moderate amount of missing data, it was decided to fill in any continuous features with the mean of that row and to drop any missing data from categorical features.  
4. After cleaning the dataset it was determined to keep all patient health-related features (total of 14) for the inital machine learning models. 

## Description of feature engineering and feature selection
1. All features were plotted to determine distribution and to look for any outliers. No outliers were found and the data for continuous features was normally distributed. We were also able to visually see that the data would need to be scaled to provide a more accurate machine learning model. 
2. It was found that the outcome feature (CHD) was imbalanced, with more patients having the outcome of “0” (did not develop CHD) compared to “1” (did develop CHD). This was helpful to determine that it may be necessary to oversample or under sample the data to improve the accuracy of the model. 
3. The features were assessed for the need for either categorical or numerical grouping, however it was decided that categorical data was all binary (0 or 1) and numerical data was all within a reasonable range. Grouping numerical values may have led to a less accurate model. 
4. Prior to running the machine learning model all features were scaled used standardization. Standardizing allows for the use of features with differing ranges/values to be compared to one another. 
5. The two machine learning models chosen to test were Logistic Regression and Random Forrest. For both the confusion matrix, accuracy score, classification report and feature importance were determined. Based on this information Logistic Regression was chosen as the final model as it provided a similar accuracy score however it provided higher precision and recall scores overall.  

## Description of how model was trained
The Logistic Regression model was trained using Python’s scikit-learn code which can be used to train a logistic regression classifier and make a prediction.  

## Description of how data was split into training and testing sets
Data was split into training and testing sets using a standard 75% to training and 25% to testing. The training and testing sets were also set to stratify to ensure that there was equal representation of the outcomes (Heart disease) in both the training and testing sets.

## Explanation of model choice, including limitations and benefits
The final model chosen was Logistic Regression without the use of features shown to have small importance (<0.03). The Classification Reports and accuracy scores were similar, however the accuracy score for Logistic Regression was higher (89.9% vs 86%). We ended up chosing to move forward with Logistic Regression as our model of choice. 

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
  
### Random Forest Model benefits:
  - More generalizable and less prone to overfitting
  - Able to extract feature importance, and making changes to feature selection
### Random Forest Model limitations:
  - Features need to have some predictive power
  - Less transparent/more difficult to know what is happening with the model

## Classification Reports

### Logistic Regression
<img src="https://github.com/ccorboy/project_one/blob/a35be5e8935e48c56406f33fc22d7e4c3b31a9f0/LR%20with%20all%20features.png" width="600" height="200">

### Logistic Regression with Random Oversampling
<img src="https://github.com/ccorboy/project_one/blob/edc61c3ae3a1358664456b1d8fe7b37c2b70ffc2/LR%20Oversampling.png" width="600" height="200">


### Logistic Regression with Reduced Features (final model)
<img src="https://github.com/ccorboy/project_one/blob/44086a346b8a75f6b6fbec5a26aee53d8ac25fd3/LR%20reduced%20features%20CR.png" width="600" height="200">

## Logistic Regression with Reduced Features - Confusion Matrix and Accuracy Score

The accuracy score for the Logistic Regression Model with a reduction of features is 90%. This is interpreted as the model (logistic regression with reduced features) correctly classifies information 90% of the time. The higher the accuracy score the better the model is at predicting outcomes; however it also can indicate a model that is overfitting the data and would not be able to be generalized to other similar datasets. 

### Accuracy Score

<img src="https://github.com/ccorboy/project_one/blob/a0a6404635ac9f03c67fcc3b68e99ec01e1f8da4/Images/LR%20with%20reduced%20features%20accuracy%20final.png" width="700" height="150">


### Confusion Matrix
Specificity = 90%,
Sensitivity = 50%
<p>
<img src="https://github.com/ccorboy/project_one/blob/e9d05e70c688c379c3e06e1b180ddc839df66212/Images/LR%20reduced%20features%20CM%20final.png" width="600" height="150">


## GoogleSlides link
[Click for Google Slides](https://docs.google.com/presentation/d/1zgd_ht6uyIJ8kVkHymmYEqXUR6f8DTbMxfj6EIIAIp0/edit?usp=sharing)

## Tableu Dashboard link
[Click for Tableu Dashboard](https://public.tableau.com/app/profile/conor.corboy/viz/project_one_draft/project_dash_draft)

### Dataset disclosure 
(NOTE: Although the enclosed dataset contains Framingham data ‘as collected’ by Framingham investigators, specific methods were employed to ensure an anonymous dataset that protects patient confidentiality; therefore, this dataset is inappropriate for publication purposes. All persons teaching with this dataset are encouraged to ensure all users are aware that this dataset is inappropriate for publication purposes.)
