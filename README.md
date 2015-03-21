# CleaningDataProject

## run_Analysis.R
This function is used to fulfill the requirements of the Getting and Cleaning Data Coursera course.  The following is an outline of what the script does.

### Requirements
The overall requirement of this project is take a set of data [detailed here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and transform it into a tidy Data set that can be used for further anyalsis.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 

### Merging the training and test sets into one data set
The function is self contained does not need the data to be downloaded ahead of time.  When executed it will check the local directory for a file called data.zip.  If present it is assumed to be the source data and will proceed to analyze it.  If not present it will download the file 
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and store it locally as data.zip.

The set of files used directly are as follows.

1. UCI HAR Dataset/test/X_test.txt
2. UCI HAR Dataset/test/y_test.txt
3. UCI HAR Dataset/test/subject_test.txt
4. UCI HAR Dataset/train/X_train.txt
5. UCI HAR Dataset/train/y_train.txt
6. UCI HAR Dataset/train/subject_train.txt

**_The additional files in the source zip file have not been included as they do not pertain to the base requirements._**

In order to process these files the X_test file was imported into a data frame and then the y_test and subject_test data was imported and appended as additional variables columns to it in order to maintain the data relationships.  This same process was used to create a second data frame consisting of the train set of files.  Finally the two data frames were combined into one full data frame consisting of all of the data.

## Extract only the measurements on the mean and standard deviation for each measurement

In order to simplify the processing of this script some analysis of the features.txt file provided by the source data set was done offline.  This file was analyszed to identify which features included the text "mean" or "std".  The index locations of these features was then retained and then the final two columns which corresponded to the recently added Activity and Subject data was included to create a final set of variables from the combined data set were to be retained.  The required variables were then selected out of the combined data set to create a new data frame of just the required data.

The names of these features was also retained for use in future steps.

## Uses descriptive activity names to name the activities in the data set

Please see the CodeBook.md for a description of how the activities data was modified to provide descriptive activity names.

## Appropriately labels the data set with descriptive variable names. 

The source data files do not have header rows with descriptions of the data so it is necessary to get the feature names and add this information to our data set.  To do this the feature names from requirement 2 were retained and used here to add to the data frame as colnames for the associated columns of data in the data frame.  This vector of labels was simply augmented with the known values of Activity and Subject to account for the way that the data was merged together.

## Final updates and returned data

Finally in order to make reviewing the data easier the Activity and Subject columns were updated to be the first two columns of the returned data and the tidy Data set is returned.