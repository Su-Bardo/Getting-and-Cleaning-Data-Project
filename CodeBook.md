---
title: "CodeBook.md"
output: html_document
---

CodeBook.md
Description of run_analysis.R

0. Set working directory
1. Download data zip file, unpack it to UCI HAR Dataset directory
2. Read files to data.tables from UCI HAR Dataset directory
3. Combine y_train, subject_train and X_train
4. Combine y_test, subject_test and X_test
5. Merges the training and the test sets to create one data set.
6. Set feature names to column names of merged data set
7. Extracts only the measurements on the mean and standard deviation for each          measurement.
8. Uses descriptive activity names to name the activities in the data set
9. Appropriately labels the data set with descriptive variable names.
10. Save table to file in outcome dir
11. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
12. Change the name of columns of new data set by adding word "_mean"to the end
13. Save table to file in outcome dir

Description data_mean_std.csv
The data set consists of 81 variables, 10300 observations, including columns names.

 [1] "ID"                              "Activity"                       
 [3] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()"     



Description data_tidy.csv
The data set consists of 81 variables, 181 observations, including columns names.

 [1] "ID"                                   "Activity"                            
 [3] "tBodyAcc-mean()-X_mean"               "tBodyAcc-mean()-Y_mean"              
 [5] "tBodyAcc-mean()-Z_mean"               "tGravityAcc-mean()-X_mean"           
 [7] "tGravityAcc-mean()-Y_mean"            "tGravityAcc-mean()-Z_mean"           
 [9] "tBodyAccJerk-mean()-X_mean"           "tBodyAccJerk-mean()-Y_mean"          
[11] "tBodyAccJerk-mean()-Z_mean"           "tBodyGyro-mean()-X_mean"             
[13] "tBodyGyro-mean()-Y_mean"              "tBodyGyro-mean()-Z_mean"             
[15] "tBodyGyroJerk-mean()-X_mean"          "tBodyGyroJerk-mean()-Y_mean"         
[17] "tBodyGyroJerk-mean()-Z_mean"          "tBodyAccMag-mean()_mean"             
[19] "tGravityAccMag-mean()_mean"           "tBodyAccJerkMag-mean()_mean"         
[21] "tBodyGyroMag-mean()_mean"             "tBodyGyroJerkMag-mean()_mean"        
[23] "fBodyAcc-mean()-X_mean"               "fBodyAcc-mean()-Y_mean"              
[25] "fBodyAcc-mean()-Z_mean"               "fBodyAcc-meanFreq()-X_mean"          
[27] "fBodyAcc-meanFreq()-Y_mean"           "fBodyAcc-meanFreq()-Z_mean"          
[29] "fBodyAccJerk-mean()-X_mean"           "fBodyAccJerk-mean()-Y_mean"          
[31] "fBodyAccJerk-mean()-Z_mean"           "fBodyAccJerk-meanFreq()-X_mean"      
[33] "fBodyAccJerk-meanFreq()-Y_mean"       "fBodyAccJerk-meanFreq()-Z_mean"      
[35] "fBodyGyro-mean()-X_mean"              "fBodyGyro-mean()-Y_mean"             
[37] "fBodyGyro-mean()-Z_mean"              "fBodyGyro-meanFreq()-X_mean"         
[39] "fBodyGyro-meanFreq()-Y_mean"          "fBodyGyro-meanFreq()-Z_mean"         
[41] "fBodyAccMag-mean()_mean"              "fBodyAccMag-meanFreq()_mean"         
[43] "fBodyBodyAccJerkMag-mean()_mean"      "fBodyBodyAccJerkMag-meanFreq()_mean" 
[45] "fBodyBodyGyroMag-mean()_mean"         "fBodyBodyGyroMag-meanFreq()_mean"    
[47] "fBodyBodyGyroJerkMag-mean()_mean"     "fBodyBodyGyroJerkMag-meanFreq()_mean"
[49] "tBodyAcc-std()-X_mean"                "tBodyAcc-std()-Y_mean"               
[51] "tBodyAcc-std()-Z_mean"                "tGravityAcc-std()-X_mean"            
[53] "tGravityAcc-std()-Y_mean"             "tGravityAcc-std()-Z_mean"            
[55] "tBodyAccJerk-std()-X_mean"            "tBodyAccJerk-std()-Y_mean"           
[57] "tBodyAccJerk-std()-Z_mean"            "tBodyGyro-std()-X_mean"              
[59] "tBodyGyro-std()-Y_mean"               "tBodyGyro-std()-Z_mean"              
[61] "tBodyGyroJerk-std()-X_mean"           "tBodyGyroJerk-std()-Y_mean"          
[63] "tBodyGyroJerk-std()-Z_mean"           "tBodyAccMag-std()_mean"              
[65] "tGravityAccMag-std()_mean"            "tBodyAccJerkMag-std()_mean"          
[67] "tBodyGyroMag-std()_mean"              "tBodyGyroJerkMag-std()_mean"         
[69] "fBodyAcc-std()-X_mean"                "fBodyAcc-std()-Y_mean"               
[71] "fBodyAcc-std()-Z_mean"                "fBodyAccJerk-std()-X_mean"           
[73] "fBodyAccJerk-std()-Y_mean"            "fBodyAccJerk-std()-Z_mean"           
[75] "fBodyGyro-std()-X_mean"               "fBodyGyro-std()-Y_mean"              
[77] "fBodyGyro-std()-Z_mean"               "fBodyAccMag-std()_mean"              
[79] "fBodyBodyAccJerkMag-std()_mean"       "fBodyBodyGyroMag-std()_mean"         
[81] "fBodyBodyGyroJerkMag-std()_mean"

