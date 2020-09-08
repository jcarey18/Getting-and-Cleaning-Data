# Getting and Cleaning Data Course Project 

## This repository contains the following:

**run_analysis.R** 

script used to clean the original dataset by doing the following:

* Download the data set from the web and unzip to UCI HAR Dataset folder 
* Read in Subject, Activity and Features data sets
* Merge Test and training data sets 
* Add column names 
* Combine activity, subject and feature(test/training) data 
* Extract only mean and standard deviation measures for each measurement
* Add descriptive activity labels 
* Add feature data labels to make easier to read 
      
**TidyData.txt**
Contains the tidy data set produced by run.analysis.R script 

**CodeBook.md**
Provides an overview of the data, variables and transformations used to generate the tidy dataset 

