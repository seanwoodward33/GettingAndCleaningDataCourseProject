## Getting and Cleaning Data - Week 4 - Asignment
## seanwoodward33
##
## This script: 1. Merges training and test data
##              2. Creates a tidy data set for measurements on the mean and S.D.
##              3. Creates a tidy data set of the average of data set above

## Function to import & clean data
## Function assumes data is already downloaded and unziped in working directory

cleanData <- function(){
    ## Import common information from parent directory
    actLabels <- read.table("./activity_labels.txt")
    featLabels <- read.table("./features.txt")

    ## Import the data from train directory
    xTrainData <- read.table("./train/X_train.txt")
    yTrainData <- read.table("./train/y_train.txt")
    trainSubjectData <- read.table("./train/subject_train.txt")

    ## Import the data from test directory
    xTestData <- read.table("./test/X_test.txt")
    yTestData <- read.table("./test/y_test.txt")
    testSubjectData <- read.table("./test/subject_test.txt")

    ## Combine datasets
    xData <- rbind(xTrainData, xTestData)
    yData <- rbind(yTrainData, yTestData)
    subjectData <- rbind(trainSubjectData, testSubjectData)

    ## Give columns sensible names
    colnames(xData) <- featLabels[,2]
    colnames(yData) <- "activityName"
    colnames(subjectData) <- "subjectNumber"
    
    ## Combine data into one table
    completeData <- cbind(subjectData, yData, xData)
    
    ## Change activity numbers to activity names
    completeData$activityName <- factor(completeData$activityName, levels = actLabels[,1], labels = actLabels[,2])
    
    ## Find only columns with mean or std dev data
    ## Need to include columns 1 & 2
    colVector <- c(1,2,grep("mean|std", colnames(completeData)))
    interestData <- completeData[,colVector]
    
    ## Tidy up column names
    # Remove special characters from headings
    colnames(interestData) <- gsub("[\\(\\)-]","",colnames(interestData))
    # Remove abbreviations
    colnames(interestData) <- gsub("^f","frequencyDomain",colnames(interestData))
    colnames(interestData) <- gsub("^t","timeDomain",colnames(interestData))
    colnames(interestData) <- gsub("Acc","Accelerometer",colnames(interestData))
    colnames(interestData) <- gsub("Gyro","Gyroscope",colnames(interestData))
    colnames(interestData) <- gsub("Mag","Magnitude",colnames(interestData))
    colnames(interestData) <- gsub("Freq","Frequency",colnames(interestData))
    colnames(interestData) <- gsub("std","StandardDeviation",colnames(interestData))
    # Capatalise mean
    colnames(interestData) <- gsub("mean","Mean",colnames(interestData))
    # Remove BodyBody typo
    colnames(interestData) <- gsub("BodyBody","Body",colnames(interestData))
    
    ## Create average of each activity for each subject and output as *.txt
    #Melt data
    interestDataMelt <- melt(interestData, id=c("subjectNumber","activityName"))
    #dcast melted data
    interestDataMeans <- dcast(dataMelt, subjectNumber + activityName ~ variable, mean)
    #write out mean data to *.txt file
    write.table(interestDataMeans,"tidy_data.txt", row.names = FALSE, quote = FALSE)
    
    ##Output cleaned data
    interestData
    
}