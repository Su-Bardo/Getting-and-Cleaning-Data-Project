## set working directory to one with my project
setwd("\\Users\\Sumbat\\Desktop\\Coursera\\getting and cleaning data project")
library(data.table)

urlname<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename<- "data.zip"

## set the constant path to directory with data and outcome
datapath<-"./UCI HAR Dataset"
outcomepath<- "./outcome"

## if zip archive does not exist then download it
if (!file.exists(filename)) {
        download.file(urlname, filename, mode = "wb")
}
        
## if download is succesful then unzip it else throw error
if (file.exists(filename)) {
        unzip(filename, overwrite = TRUE)
}       else {
        stop("something wrong with downloading of data zip file")
}

## if directory outcome deas not exist then create it
if (!(dir.exists("outcome"))) {dir.create("outcome")}

##1. Merges the training and the test sets to create one data set.
##   read X_train, X_test, y_train, y_test, subject_train, subject_test
##   and combine them 
xtrain<-fread(paste(datapath, "/train/X_train.txt",sep = ""))
ytrain<-fread(paste(datapath, "/train/y_train.txt",sep = ""))
subjecttrain<-fread(paste(datapath, "/train/subject_train.txt",sep = ""))
combined_train<- cbind(subjecttrain, ytrain, xtrain)

xtest <-fread(paste(datapath, "/test/X_test.txt",sep = ""))
ytest <-fread(paste(datapath, "/test/y_test.txt",sep = ""))
subjecttest<-fread(paste(datapath, "/test/subject_test.txt",sep = ""))
combined_test<- cbind(subjecttest, ytest, xtest)

data_combined<- rbind(combined_train, combined_test)

##2. Extracts only the measurements on the mean and standard deviation for each
##   measurement.

features<- fread(paste(datapath, "/features.txt",sep = ""))
## set names of columns of combined to feature names
names(data_combined)<- c("ID", "Activity",features$V2)
## extract columns with mean and std part        
meanvector<- grep("mean", names(data_combined))
stdvector<- grep("std", names(data_combined))
data_mean_std<- data_combined[,c(1,2,meanvector,stdvector),with=FALSE]


##3. Uses descriptive activity names to name the activities in the data set
activity<- fread(paste(datapath, "/activity_labels.txt",sep = ""))

##4. Appropriately labels the data set with descriptive variable names.
data_mean_std$Activity<- factor(data_mean_std$Activity,levels = activity$V1, labels = activity$V2)
setkey(data_mean_std, ID, Activity)

## save table to outcome dir
write.table(data_mean_std, paste0(outcomepath, "/data_mean_std.csv"),
            sep=",",row.names=FALSE,quote=FALSE)

##5. From the data set in step 4, creates a second, independent tidy data set
##   with the average of each variable for each activity and each subject.
data_tidy<-data_mean_std[, lapply(.SD, mean), by= key(data_mean_std)]

##change the name of columns by adding _mean to the end of columns names except
## 1st and 2nd columns
newname<-colnames(data_tidy)
newname[-c(1:2)]<-paste0(newname[-c(1:2)],"_mean")
colnames(data_tidy)<- newname

## save table to outcome dir
write.table(data_tidy, paste0(outcomepath, "/data_tidy.csv"),
            sep=",",row.names=FALSE,quote=FALSE)
