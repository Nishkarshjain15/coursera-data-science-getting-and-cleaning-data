## (c) 2014 Gonzalo PENA C.

# This script follows a step by step procedure in order to transform the dataset from
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# into a tidy subset dataset as part of the course project in the Coursera:
# Data Science Specialization: Getting and Cleaning Data
# The script is divided in blocks that explain each one of the steps. 
# During this process variables were sensible names to easily identify the parts.

# @ Script preprocessing
# Set the current work directory ####
script.dir <- dirname(sys.frame(1)$ofile)
setwd(script.dir)

# Define base folders and subfolder names ####
baseFolder <- 'UCI HAR Dataset'
trainFolder <- 'train'
testFolder <- 'test'

# Download data set and unzip it ####
# But first check if the folder exists to skipt this step
if (!file.exists(baseFolder)) {
    dataUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    tempFile <- tempfile()
    download.file(dataUrl, destfile=tempFile, method="curl")
    unzip(tempFile)
}

# Define filenames to load ####
activityFilename <- 'activity_labels.txt'
featuresFilename <- 'features.txt'
trainSubjectFilename <- 'subject_train.txt'
trainLabelsFilename <- 'y_train.txt'
trainDataFilename <- 'X_train.txt'
testSubjectFilename <- 'subject_test.txt'
testLabelsFilename <- 'y_test.txt'
testDataFilename <- 'X_test.txt'

# Create path to files ####
activityFilename <- file.path(baseFolder, activityFilename)
featuresFilename <- file.path(baseFolder, featuresFilename)
trainLabelsFilename <- file.path(baseFolder, trainFolder, trainLabelsFilename)
trainSubjectFilename <- file.path(baseFolder, trainFolder, trainSubjectFilename)
trainDataFilename <- file.path(baseFolder,  trainFolder, trainDataFilename)
testLabelsFilename <- file.path(baseFolder, testFolder, testLabelsFilename)
testSubjectFilename <- file.path(baseFolder, testFolder, testSubjectFilename)
testDataFilename <- file.path(baseFolder, testFolder, testDataFilename)

# @ Script processing ####
# Read files into R data frames ####
activity <- read.table(activityFilename, col.names=c('Number', 'Activity'))
features <- read.table(featuresFilename, col.names=c('Number', 'Feature'))
testSubject <- read.table(testSubjectFilename, col.names=c('Subject'))
testLabels <- read.table(testLabelsFilename, col.names=c('Number'))
testData <- read.table(testDataFilename)
trainSubject <- read.table(trainSubjectFilename, col.names=c('Subject'))
trainLabels <- read.table(trainLabelsFilename, col.names=c('Number'))
trainData <- read.table(trainDataFilename)

# Fix features names to be used as column names ####
features$Feature <- gsub('\\(|\\)', '', features$Feature)
features$Feature <- gsub('-|,', '.', features$Feature)
features$Feature <- gsub('BodyBody', 'Body', features$Feature)
features$Feature <- gsub('^f', 'Frequency.', features$Feature)
features$Feature <- gsub('^t', 'Time.', features$Feature)
features$Feature <- gsub('^angle', 'Angle.', features$Feature)
features$Feature <- gsub('mean', 'Mean', features$Feature)
features$Feature <- gsub('tBody', 'TimeBody', features$Feature)

# Change the name of the data sets using the features data ####
colnames(testData) <- features$Feature
colnames(trainData) <- features$Feature

# Replace train and test labels by the names in the activity file ####
labels <- activity$Activity
testFactors <- factor(testLabels$Number)
trainFactors <- factor(trainLabels$Number)
testActivity <- data.frame(Activity=as.character(factor(testFactors, labels=labels)))
trainActivity <- data.frame(Activity=as.character(factor(trainFactors, labels=labels)))

# Merge data using column binds ####
testMergedData <- cbind(testSubject, testActivity, testData)
trainMergedData <- cbind(trainSubject, trainActivity, trainData)

# @ Merges the training and the test sets to create one data set ####
mergedData <- rbind(testMergedData, trainMergedData)

# Store columns that do not conatin Angle ir MeanFreq ####
rows <- c()
colNames <- colnames(mergedData)
for (i in seq_along(colNames)){
    name <- colNames[i]
    check1 <- grep('Angle', x=name)
    check2 <- grep('MeanFreq', x=name)
    if (!(any(check1) | any(check2))){
        rows <- c(r, i)
    }
} 

# Extracts only the measurements on the mean and standard deviation for each measurement #### 
mergedData <- mergedData[,rows]
mergedDataSubset <- mergedData[,grep('Subject|Activity|Mean|std',x=colnames(mergedData))]

# @ Creates a second, independent tidy data ####
# set with the average of each variable for each activity and each subject ####
library(data.table)
tidyData <- data.table(mergedDataSubset)
tidyData <- tidyData[,lapply(.SD, mean), by=c('Subject', 'Activity')]
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]

# @ Write the output to a file ####
tidyFileName <- 'tidy.txt'
write.table(tidyData, file=tidyFileName, row.names=FALSE)

# @ For test purposes read the created file ####
tidyDataRead <- read.csv(tidyFileName, sep=' ')

# @ For CodeBook.md creation write column names of data set ####
write.table(colnames(mergedDataSubset), 'm.md', row.names=FALSE)
