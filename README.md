# Getting-and-Cleaning-Data-Course-Project

This repository contains the files for the Getting and Cleaning Data Course Project, which are listed bellow:
- __README.md__, this file, which provides an overview of the data set and how it was created.
- __tidy_data.txt__, which contains the data set.
- __CodeBook.md__, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
- __run_analysis.R__, the R script that was used to create the data set (see the Creating the data set section below)

## Creating the data set
The R script __run_analysis.txt__ can be used to recreate the data set. It retrieves the data from the original sources, makes the neccesary transformations to make the __tidy_data.txt__ file:

- Download and unzip source data if it doesn't exist.
- Read the training and test datasets.
- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Read the activity_labels file in order to use descriptive activity names to name the activities in the data set.
- Appropriately label the data set with descriptive variable names.
- Create a second, independent tidy set with the average of each variable for each activity and each subject.
- Write the data set to the __tidy_data.txt__ file.
