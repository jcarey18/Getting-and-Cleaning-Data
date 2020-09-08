##Download data files
##First check to see if the data directory exists, if not, create it
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

##Unzip to UCI HAR dataset folder 
unzip(zipfile="./data/Dataset.zip",exdir="./data")

##Get the list of files in the folder
path <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path, recursive=TRUE)
files

##Read in data, since we're only interested in mean/SD the Intertial Signals folders are not needed 

##Read in Feature Info
features <- read.table("./data/UCI HAR Dataset/features.txt") #Variables used on the feature vector 

##Read Subject Files
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt") ##Identifies the subject, 1-30
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

##Read Activity IDs
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE) ##test/train labels -- activity ID
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)

##Read test/train datasets (Features)
x_test <- read.table("./data/UCI HAR Dataset/test/x_test.txt") ##test/train dataset 
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")

##Merge test and training files
Dataset <- rbind(x_test,x_train) ##merge datasets
Subject <- rbind(subject_test,subject_train) #merge subject IDs
Activity <- rbind(y_test,y_train) #merge activity IDs

##Add Column Names
names(Activity) <- c("Activity")
names(Subject) <- c("Subject")
names(Dataset) <- features$V2

##Check column naming 
str(Activity)
head(Activity)

str(Subject)
head(Subject)

str(Dataset)
head(Dataset)

head(features)

##cbind to combine activity, subject and dataset/features 
full_dataset <- cbind(Activity, Subject, Dataset)

#check new dataset 
head(full_dataset)
dim(full_dataset)
str(full_dataset)


##Extract only Mean and SD
FeaturesMeanStd <- grep("mean\\(\\)|std\\(\\)",features$V2,value=TRUE)

##Check new dataset 
head(FeaturesMeanStd)
str(FeaturesMeanStd)
dim(FeaturesMeanStd)

##Add activity & subjects 
FeaturesMeanStd <- union(c("Subject","Activity"), FeaturesMeanStd)
dataTable<- subset(full_dataset,select=FeaturesMeanStd) 

###Check
str(dataTable)
head(dataTable)

##Add descriptive labels 
install.packages("dplyr")
library(dplyr)

##rename feature data labels 
##prefix 't' to denote time
##Note the 'f' to indicate frequency domain signals
##ACC - Acceleration 

names(dataTable)<-gsub("^t", "time", names(dataTable))
names(dataTable)<-gsub("^f", "frequency", names(dataTable))
names(dataTable)<-gsub("Acc", "Accelerometer", names(dataTable))
names(dataTable)<-gsub("Mag", "Magnitude", names(dataTable))
names(dataTable)<-gsub("BodyBody", "Body", names(dataTable))
names(dataTable)<-gsub("Gyro", "Gyroscope", names(dataTable))


##Add descriptive activity labels 
dataTable$Activity <- recode_factor(dataTable$Activity, '1'="WALKING", '2'="WALKING_UPSTAIRS", '3'="WALKING_DOWNSTAIRS", '4'="SITTING",
              '5'="STANDING", '6'="LAYING")

##Check new labels 
head(dataTable$Activity)
tail(dataTable$Activity)
head(dataTable)


##create a second, independent tidy data set with the average of each variable for each activity and each subject.
TidyData <- aggregate(. ~Subject + Activity, dataTable, mean)
str(TidyData)

TidyData<-TidyData[order(TidyData$Subject,TidyData$Activity),]

#Check 
dim(TidyData)
dim(dataTable)

##print TidyData dataset to a file 
write.table(TidyData, file = "./data/TidyData.txt",row.name=FALSE)

##Read in new table to view TidyData.txt
data <- read.table(file = "./data/TidyData.txt", header = TRUE)
View(data)
colnames(data)
