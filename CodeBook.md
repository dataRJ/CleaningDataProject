# Getting and Cleaning Data Project Codebook

## Original Source Data

The original Data is described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
In order to provide data that was tidy and only included features including mean or standard deviation values the following steps were changes were made to the data. 

### Data Selection
Only those features as outlined in the features.txt file of the data set were kept.  All other features were omitted.  To see a detailed outline of how the data was processed please refer to the README file.

### Descriptive Activities
The activities variable in source data consisted of numeric values correlating to descriptive values as outlined in the activity_labels.txt file.  The values in the combined data set were updated such that the numeric values were replaced with the descriptive labels as outlined in the table below.

Number | Label
------ | -----
1      | Walking
2      | Walking Upstairs
3      | Walking Downstairs
4      | Sitting
5      | Standing
6      | Laying

### Data
The following is a listing of the components of the data

**Activity**        The activity the individual was measuered doing.  
                Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs  
 
**Subject**         Identifier for individual recorded doing the activity.  
                Values are numeric and range from 1-30  
  
_Measurment Means and Standard Deviation Values_  
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
- Triaxial Angular velocity from the gyroscope.   
- 79 features time and frequency domain variables.  All features that have a preceding t are time variables and all with the   
  a preceding f are frequency variables.
  
**tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()**  
        

