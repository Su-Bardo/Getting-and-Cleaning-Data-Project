#**"CodeBook.md"**

#**Description of run_analysis.R**

0. Set working directory
1. Download data zip file, unpack it to UCI HAR Dataset directory
2. Read files to data.tables from UCI HAR Dataset directory
3. Combine y_train, subject_train and X_train
4. Combine y_test, subject_test and X_test
5. Merges the training and the test sets to create one data set.
6. Set feature names to column names of merged data set
7. Extracts only the measurements on the mean and standard deviation for each                 measurement.
8. Uses descriptive activity names to name the activities in the data set
9. Appropriately labels the data set with descriptive variable names.
10. Save table to file in outcome dir
11. Creates a second, independent tidy data set with the average of each variable for each     activity and each subject.
12. Change the name of columns of new data set by adding word "_mean"to the end
13. Save table to file in outcome dir

##**Description data_mean_std.csv**
The data set consists of 81 variables, 10300 observations, including columns names.


 


##**Description data_tidy.csv**
The data set consists of 81 variables, 181 observations, including columns names.

 [1] "ID"                                  
 [2] "Activity"                            
 [3] "tBodyAcc-mean()-X_mean"              
 [4] "tBodyAcc-mean()-Y_mean"              
 [5] "tBodyAcc-mean()-Z_mean"              
 [6] "tGravityAcc-mean()-X_mean"           
 [7] "tGravityAcc-mean()-Y_mean"           
 [8] "tGravityAcc-mean()-Z_mean"           
 [9] "tBodyAccJerk-mean()-X_mean"          
[10] "tBodyAccJerk-mean()-Y_mean"          
[11] "tBodyAccJerk-mean()-Z_mean"          
[12] "tBodyGyro-mean()-X_mean"             
[13] "tBodyGyro-mean()-Y_mean"             
[14] "tBodyGyro-mean()-Z_mean"             
[15] "tBodyGyroJerk-mean()-X_mean"         
[16] "tBodyGyroJerk-mean()-Y_mean"         
[17] "tBodyGyroJerk-mean()-Z_mean"         
[18] "tBodyAccMag-mean()_mean"             
[19] "tGravityAccMag-mean()_mean"          
[20] "tBodyAccJerkMag-mean()_mean"         
[21] "tBodyGyroMag-mean()_mean"            
[22] "tBodyGyroJerkMag-mean()_mean"        
[23] "fBodyAcc-mean()-X_mean"              
[24] "fBodyAcc-mean()-Y_mean"              
[25] "fBodyAcc-mean()-Z_mean"              
[26] "fBodyAcc-meanFreq()-X_mean"          
[27] "fBodyAcc-meanFreq()-Y_mean"          
[28] "fBodyAcc-meanFreq()-Z_mean"          
[29] "fBodyAccJerk-mean()-X_mean"          
[30] "fBodyAccJerk-mean()-Y_mean"          
[31] "fBodyAccJerk-mean()-Z_mean"          
[32] "fBodyAccJerk-meanFreq()-X_mean"      
[33] "fBodyAccJerk-meanFreq()-Y_mean"      
[34] "fBodyAccJerk-meanFreq()-Z_mean"      
[35] "fBodyGyro-mean()-X_mean"             
[36] "fBodyGyro-mean()-Y_mean"             
[37] "fBodyGyro-mean()-Z_mean"             
[38] "fBodyGyro-meanFreq()-X_mean"         
[39] "fBodyGyro-meanFreq()-Y_mean"         
[40] "fBodyGyro-meanFreq()-Z_mean"         
[41] "fBodyAccMag-mean()_mean"             
[42] "fBodyAccMag-meanFreq()_mean"         
[43] "fBodyBodyAccJerkMag-mean()_mean"     
[44] "fBodyBodyAccJerkMag-meanFreq()_mean" 
[45] "fBodyBodyGyroMag-mean()_mean"        
[46] "fBodyBodyGyroMag-meanFreq()_mean"    
[47] "fBodyBodyGyroJerkMag-mean()_mean"    
[48] "fBodyBodyGyroJerkMag-meanFreq()_mean"
[49] "tBodyAcc-std()-X_mean"               
[50] "tBodyAcc-std()-Y_mean"               
[51] "tBodyAcc-std()-Z_mean"               
[52] "tGravityAcc-std()-X_mean"            
[53] "tGravityAcc-std()-Y_mean"            
[54] "tGravityAcc-std()-Z_mean"            
[55] "tBodyAccJerk-std()-X_mean"           
[56] "tBodyAccJerk-std()-Y_mean"           
[57] "tBodyAccJerk-std()-Z_mean"           
[58] "tBodyGyro-std()-X_mean"              
[59] "tBodyGyro-std()-Y_mean"              
[60] "tBodyGyro-std()-Z_mean"              
[61] "tBodyGyroJerk-std()-X_mean"          
[62] "tBodyGyroJerk-std()-Y_mean"          
[63] "tBodyGyroJerk-std()-Z_mean"          
[64] "tBodyAccMag-std()_mean"              
[65] "tGravityAccMag-std()_mean"           
[66] "tBodyAccJerkMag-std()_mean"          
[67] "tBodyGyroMag-std()_mean"             
[68] "tBodyGyroJerkMag-std()_mean"         
[69] "fBodyAcc-std()-X_mean"               
[70] "fBodyAcc-std()-Y_mean"               
[71] "fBodyAcc-std()-Z_mean"               
[72] "fBodyAccJerk-std()-X_mean"           
[73] "fBodyAccJerk-std()-Y_mean"           
[74] "fBodyAccJerk-std()-Z_mean"           
[75] "fBodyGyro-std()-X_mean"              
[76] "fBodyGyro-std()-Y_mean"              
[77] "fBodyGyro-std()-Z_mean"              
[78] "fBodyAccMag-std()_mean"              
[79] "fBodyBodyAccJerkMag-std()_mean"      
[80] "fBodyBodyGyroMag-std()_mean"         
[81] "fBodyBodyGyroJerkMag-std()_mean"  
