# Getting and Cleaning Data Course Project 

## This repository contains the following:

* >run_analysis.R script used to clean the original dataset by doing the following:
      1. Download the data set from the web and unzip to UCI HAR Dataset folder 
      2. Read in Subject, Activity and Features data sets
      3. Merge Test and training data sets 
      4. Add column names 
      5. Combine activity, subject and feature(test/training) data 
      6. Extract only mean and standard deviation measures for each measurement
      7. Add descriptive activity labels 
      8. Add feature data labels to make easier to read 
* TidyData.txt contains the tidy data set produced by run.analysis.R script 
* CodeBook.md provides an overview of the data, variables and transformations used to generate the tidy dataset 
