# Predicting Death from Heart Failure: Part I
## Selected Topic
Heart disease data gathered from the Framiningham Heart Study that includes multiple patient health parameters (machine learning model features) and the outcome of whether or not an individual ended up with heart disease after 10 years. The outcome is a binary classification of either "yes" someone developed heart disease or "no" someone did not develop heart disease. 

## Description of Source Data
Data contains a total of 14 columns and 302 patients (rows). The outcome data currently ranks patients as having no heart disease (0) or some stage of heart disease. The outcome data will be processed to be a binary "yes" heart disease or "no" heart disease; all stages of heart disease will be combined under the outcome "yes" heart disease. 

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

## Description of feature engineering and feature selection

## Description of how data was split into training and testing sets
Data was split into training and testing sets using a standard 75% to training and 25% to testing. The training and testing sets were also set to stratisfy to ensure that there was equal representation of the outcomes in both the training and testing sets.

## Explanation of model choice, including limitations and benefits
1. Logistic Regression benefits: Able to take in multiple features and determine a binary outcome. The positive scores (for feature importance) indicate a feature that predicts class 1, whereas the negative scores indicate a feature that predicts class 0.
