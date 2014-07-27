## (c) 2014 Gonzalo PENA C.
## These script


# @ Set the current work directory ####
script.dir <- dirname(sys.frame(1)$ofile)
setwd(script.dir)

# @ Define base folders and subfolder names ####
baseFolder <- 'UCI HAR Dataset'
trainFolder <- 'train'
testFolder <- 'test'

# @ Download data set and unzip it ####
# But first check if the folder exists to skipt this step
if (!file.exists(baseFolder)) {
    dataUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    tempFile <- tempfile()
    download.file(dataUrl, destfile=tempFile, method="curl")
    unzip(tempFile)
}

# @ Define filenames to load ####
activityFilename <- 'activity_labels.txt'
featuresFilename <- 'features.txt'
trainSubjectFilename <- 'subject_train.txt'
trainLabelsFilename <- 'y_train.txt'
trainDataFilename <- 'X_train.txt'
testSubjectFilename <- 'subject_test.txt'
testLabelsFilename <- 'y_test.txt'
testDataFilename <- 'X_test.txt'

# **Create path to files ####
activityFilename <- file.path(baseFolder, activityFilename)
featuresFilename <- file.path(baseFolder, featuresFilename)
trainLabelsFilename <- file.path(baseFolder, trainFolder, trainLabelsFilename)
trainSubjectFilename <- file.path(baseFolder, trainFolder, trainSubjectFilename)
trainDataFilename <- file.path(baseFolder,  trainFolder, trainDataFilename)
testLabelsFilename <- file.path(baseFolder, testFolder, testLabelsFilename)
testSubjectFilename <- file.path(baseFolder, testFolder, testSubjectFilename)
testDataFilename <- file.path(baseFolder, testFolder, testDataFilename)

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

# @ Change the name of the data sets using the features data ####
colnames(testData) <- features$Feature
colnames(trainData) <- features$Feature

# @ Replace train and test labels by the names in the activity file ####
labels <- activity$Activity
testFactors <- factor(testLabels$Number)
trainFactors <- factor(trainLabels$Number)
testActivity <- data.frame(Activity=as.character(factor(testFactors, labels=labels)))
trainActivity <- data.frame(Activity=as.character(factor(trainFactors, labels=labels)))

# @ Merge data using column binds ####
testMergedData <- cbind(testSubject, testActivity, testData)
trainMergedData <- cbind(trainSubject, trainActivity, trainData)

# @ Merges the training and the test sets to create one data set ####
mergedData <- rbind(testMergedData, trainMergedData)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
colNames <- colnames(mergedData)[grep('^(?!Angle)',x=colnames(mergedData),perl=TRUE)]
mergedDataSubset <- mergedData[,grep('Subject|Activity|Mean|std',x=colNames)]

# Uses descriptive activity names to name the activities in the data set

# Appropriately labels the data set with descriptive variable names. 

# @ Creates a second, independent tidy data ####
# set with the average of each variable for each activity and each subject. 
library(data.table)
tidyData <- data.table(mergedDataSubset)
tidyData <- tidyData[,lapply(.SD, mean), by=c('Subject', 'Activity')]
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]

# @ Write the output to a file ####
tidyFileName <- 'tidy.txt'
write.table(tidyData, file=tidyFileName, row.names=FALSE)

# @ For test purposes read the created file ####
tidyDataRead <- read.csv(tidyFileName)

write.table(colnames(mergedDataSubset), 'm.md', row.names=FALSE)
