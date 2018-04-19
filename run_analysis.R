#Download the Files

if(!file.exists("UCI HAR Dataset.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                "UCI HAR Dataset.zip",
                mode = "wb")
}

if(!file.exists("UCI HAR Dataset")){
   unzip("UCI HAR Dataset.zip")
}

#Read Train Data
trainValues <- read.table("UCI HAR Dataset/train/X_train.txt")

trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt")

#Read Test Data
testValues <- read.table("UCI HAR Dataset/test/X_test.txt")

testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

testLabels <- read.table("UCI HAR Dataset/test/y_test.txt")

# Merge Data
allData<-rbind(cbind(testSubjects,testLabels,testValues),
               cbind(trainSubjects,trainLabels,trainValues))

#Read Features
features <- read.table("UCI HAR Dataset/features.txt",as.is = T)

#Assign Column Names
colnames(allData) <- c("subject","activity",features[,2])

#Subset by column names containign mean or std
subCol <- grep("subject|activity|mean|std",colnames(allData))

allData <- allData[,subCol]

#Activities names as factors
activityl <- read.table("UCI HAR Dataset/activity_labels.txt",as.is = T)

allData$activity <- factor(allData$activity,levels = activityl[,1],labels = activityl[,2])

#Rename Columns names
cNames <- colnames(allData)

cNames <- gsub("^t","timeDomain",cNames)
cNames <- gsub("^f","frequencyDomain",cNames)
cNames <- gsub("Acc","Accelerometer",cNames)
cNames <- gsub("Gyro","Gyroscope",cNames)
cNames <- gsub("Mag","Magnitude",cNames)
cNames <- gsub("Freq","Frequency",cNames)
cNames <- gsub("std","StandardDeviation",cNames)
cNames <- gsub("mean","Mean",cNames)
cNames <- gsub("[\\(\\)\\-]","",cNames)

colnames(allData) <- cNames

# Load dplyr
library(dplyr)

# New variable, Group by subject and activity, then summarize by mean
allDataMeans <- allData %>% group_by(subject,activity) %>% summarise_each(funs(mean))

#Export allDataMean
write.table(allDataMeans,"tidy_data.txt",row.names = F,quote = F)