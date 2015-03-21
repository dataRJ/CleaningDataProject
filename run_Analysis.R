run_Analysis <- function() {
        library(dplyr)

        ## download the zip file
        if(!file.exists("./data.zip")) {
                download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./data.zip",method="curl")        
        }
        
        ## Get the test files

        xTestFile <- tbl_df(read.table(unz("data.zip","UCI HAR Dataset/test/X_test.txt")))
        yTestFile <- read.table(unz("data.zip","UCI HAR Dataset/test/y_test.txt"))
        sTestFile <- read.table(unz("data.zip","UCI HAR Dataset/test/subject_test.txt"))
        
        ## append y feature data to the activites create one complete view of the data
        
        xytestdata <- mutate(xTestFile, Activity = yTestFile[,1], Subject= sTestFile[,1])
        
        ## Select only the columns the include a mean or standard deviation
        testdata <- select(xytestdata,c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 
                                        227, 228, 240, 241, 253, 254, 266:271, 294:296, 345:350, 
                                        373:375, 424:429, 452:454, 503, 504, 513, 516, 517, 526, 
                                        529, 530, 539, 542, 543, 552, 562, 563))
                
        ## Get the train files
        xTrainFile <- tbl_df(read.table(unz("data.zip","UCI HAR Dataset/train/X_train.txt")))
        yTrainFile <- read.table(unz("data.zip","UCI HAR Dataset/train/y_train.txt"))
        sTrainFile <- read.table(unz("data.zip","UCI HAR Dataset/train/subject_train.txt"))
        
        xytraindata <- mutate(xTrainFile, Activity=yTrainFile[,1], Subject= sTrainFile[,1])
        
        ## Select only the columns the include a mean or standard deviation
        traindata <- select(xytraindata,c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 
                                          227, 228, 240, 241, 253, 254, 266:271, 294:296, 345:350, 
                                          373:375, 424:429, 452:454, 503, 504, 513, 516, 517, 526, 
                                          529, 530, 539, 542, 543, 552, 562, 563))
        
        ## combine the two together to make on complete dataset
        fulldata <- rbind(testdata,traindata)
        
        ## Clean up the activity values to provide human readable value instead
        
        fulldata$Activity[fulldata$Activity=='1'] <- "Walking"
        fulldata$Activity[fulldata$Activity=='2'] <- "Walking Upstairs"
        fulldata$Activity[fulldata$Activity=='3'] <- "Walking Downstairs"
        fulldata$Activity[fulldata$Activity=='4'] <- "Sitting"
        fulldata$Activity[fulldata$Activity=='5'] <- "Standing"
        fulldata$Activity[fulldata$Activity=='6'] <- "Laying"
        
        ## Add correct variable names from original data
        colnames(fulldata) <- c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", 
                                "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", 
                                "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", 
                                "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", 
                                "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", 
                                "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", 
                                "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", 
                                "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", 
                                "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", 
                                "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", 
                                "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z", "fBodyAcc-std()-X", "fBodyAcc-std()-Y", 
                                "fBodyAcc-std()-Z", "fBodyAcc-meanFreq()-X", "fBodyAcc-meanFreq()-Y", "fBodyAcc-meanFreq()-Z", 
                                "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", 
                                "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyAccJerk-meanFreq()-X", "fBodyAccJerk-meanFreq()-Y", 
                                "fBodyAccJerk-meanFreq()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", 
                                "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyGyro-meanFreq()-X", 
                                "fBodyGyro-meanFreq()-Y", "fBodyGyro-meanFreq()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", 
                                "fBodyAccMag-meanFreq()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", 
                                "fBodyBodyAccJerkMag-meanFreq()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", 
                                "fBodyBodyGyroMag-meanFreq()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()", 
                                "fBodyBodyGyroJerkMag-meanFreq()", "Activity", "Subject")
        
        ## To make it a bit easier on the user we'll just shift the Activity and Subjects to be the first two columns
        fulldata <- fulldata[,c(80,81,1:79)]
        
        ## Return the new tidy dataset
        fulldata       
}