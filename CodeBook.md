---
title: "CodeBook.md"
output: html_document
---

# Getting and Cleaning Data Course Project - Code Book

This codebook summarizes the tidy dataset ```{r} tidy.txt '''

## Data

Raw data downloaded and unzipped to folder called UCI HAR Dataset

##Identifiers 

'''{r}
Activities - Each volunteer performed 6 activities
'''

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

'''{r} Subjects ''' - Subject identifier ranges from 1-30, 30 volunteers when through the experiment 

##Measures 

'''{r} rownames(data) '''