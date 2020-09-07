---
title: "CodeBook.md"
output: html_document
---

# Getting and Cleaning Data Code Book

This code book summarized the tidy data set TidyData.txt 

## Identifiers 

### Activities 

Each volunteer performed 6 activities:

* WALKING
* WALKING_UPSTAIRS 
* WALKING_DOWNSTAIRS 
* SITTING 
* STANDING 
* LAYING

### Subjects 

Subject identifier ranges from 1-30

## Measures

Final data set extracts only mean and standard deviation of each measurement: 

*	Subject
*	Activity
*	timeBodyAccelerometer.mean...X
*	timeBodyAccelerometer.mean...Y
*	timeBodyAccelerometer.mean...Z
*	timeBodyAccelerometer.std...X
*	timeBodyAccelerometer.std...Y
*	timeBodyAccelerometer.std...Z
*	timeGravityAccelerometer.mean...X
*	timeGravityAccelerometer.mean...Y
*	timeGravityAccelerometer.mean...Z
*	timeGravityAccelerometer.std...X
*	timeGravityAccelerometer.std...Y
*	timeGravityAccelerometer.std...Z
*	timeBodyAccelerometerJerk.mean...X
*	timeBodyAccelerometerJerk.mean...Y
*	timeBodyAccelerometerJerk.mean...Z
*	timeBodyAccelerometerJerk.std...X
*	timeBodyAccelerometerJerk.std...Y
*	timeBodyAccelerometerJerk.std...Z
*	timeBodyGyroscope.mean...X
*	timeBodyGyroscope.mean...Y
*	timeBodyGyroscope.mean...Z
*	timeBodyGyroscope.std...X
*	timeBodyGyroscope.std...Y
*	timeBodyGyroscope.std...Z
*	timeBodyGyroscopeJerk.mean...X
*	timeBodyGyroscopeJerk.mean...Y
*	timeBodyGyroscopeJerk.mean...Z
*	timeBodyGyroscopeJerk.std...X
*	timeBodyGyroscopeJerk.std...Y
*	timeBodyGyroscopeJerk.std...Z
*	timeBodyAccelerometerMagnitude.mean..
*	timeBodyAccelerometerMagnitude.std..
*	timeGravityAccelerometerMagnitude.mean..
*	timeGravityAccelerometerMagnitude.std..
*	timeBodyAccelerometerJerkMagnitude.mean..
*	timeBodyAccelerometerJerkMagnitude.std..
*	timeBodyGyroscopeMagnitude.mean..
*	timeBodyGyroscopeMagnitude.std..
*	timeBodyGyroscopeJerkMagnitude.mean..
*	timeBodyGyroscopeJerkMagnitude.std..
*	frequencyBodyAccelerometer.mean...X
*	frequencyBodyAccelerometer.mean...Y
*	frequencyBodyAccelerometer.mean...Z
*	frequencyBodyAccelerometer.std...X
*	frequencyBodyAccelerometer.std...Y
*	frequencyBodyAccelerometer.std...Z
*	frequencyBodyAccelerometerJerk.mean...X
*	frequencyBodyAccelerometerJerk.mean...Y

## Transformations 

1. Subject, Activity and Features data sets were read in -- both test and training 
2. Test and training data sets were merged  
3. Column names added  
4. Cbind was used to combine activity, subject and feature(test/training) data 
5. Only mean and standard deviation was extracted for each measurement
6. Descriptive activity labels were added 
7. Feature data labels were added to make easier to read 

Transformations were made using the run_analysis.R script, see READ.ME.md for instruction 



