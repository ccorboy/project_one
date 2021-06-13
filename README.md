# Predicting Death from Heart Failure: Part I
## Selected Topic
Heart disease data gathered through the Cleveland Clinic that includes multiple patient health parameters (machine learning model features) and the outcome of whether or not they ended up with cardiovascular disease (outcome). The outcome data will be processed to be a binary "yes" heart disease or "no" heart disease. 

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
