---
title: "README"
output: html_document
---

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


What does we do?
0. Set working directory
1. Download data zip file, unpack it to UCI HAR Dataset directory
2. Read files to data.tables from UCI HAR Dataset directory
3. Combine y_train, subject_train and X_train
4. Combine y_test, subject_test and X_test
5. Merges the training and the test sets to create one data set.
6. Set feature names to column names of merged data set
7. Extracts only the measurements on the mean and standard deviation for each measurement.
8. Uses descriptive activity names to name the activities in the data set
9. Appropriately labels the data set with descriptive variable names.
10. Save table to file in outcome dir
11. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
12. Change the name of columns of new data set by adding word "_mean"to the end
13. Save table to file in outcome dir

