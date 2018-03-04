# Getting and Cleaning Data - Week 4 - Course Project

This repository contains files and data for the Getting and Cleaning Data course from JHU.

## Repository contents:

- 'CodeBook.md', a code book that describes the variables, the data and work performed to clean up the data
- 'run_analysis.R', the R script used to clean and create the data
- 'tidy_data.txt', an independent tidy data set with the average of each variable for each activity and each subject
- 'README.md', this file which describes the contents of the repository

## run_analysis.R

The R script, `run_analysis.R`, contains the function 'cleanData()', which performs the following:

- Imports the feature and activity information
- Imports both the training and test datasets
- Merges these datasets together
- Names the variables to using the given information
- Combines the data into one date table
- Replaces the activity numbers with activity names
- Selects only the data which are averaged or standard deviation results
- Tidies up the column names to remove abbreviations/typos
- Outputs, to a text file called 'tidy_data.txt.', an independent tidy data set with the average of each variable for each activity and each subject
- Returns the full tidy dataset for use later if needed
