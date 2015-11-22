#This scrip is part of the Getting & Cleaning Data Course Project 
#It does the following.
##1.Merges the training and the test sets to create one data set.

##3.Uses descriptive activity names to name the activities in the data set
##4.Appropriately labels the data set with descriptive variable names.
##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
install.packages("plyr")
library(plyr)
#GET DATA
if(!file.exists("./cleandata")){dir.create("./cleandata")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl,destfile="./cleandata/Dataset.zip",method="curl")
#I´ve had some issues if this line, so I just delete the argument method, it works for me
download.file(fileUrl,destfile="./cleandata/Dataset.zip")

#UNZIP
unzip(zipfile="./cleandata/Dataset.zip",exdir="./cleandata")

#READ ACTIVITY DATA 
local_data <- file.path("./cleandata" , "UCI HAR Dataset")
testActivities  <- read.table(file.path(local_data, "test" , "Y_test.txt" ),header = FALSE)

trainActivities  <- read.table(file.path(local_data, "train" , "Y_train.txt" ),header = FALSE)

#READ SUBJECT DATA
trainSubject <- read.table(file.path(local_data, "train", "subject_train.txt"),header = FALSE)
testSubject <- read.table(file.path(local_data, "test", "subject_test.txt"),header = FALSE)

#READ FEATURES DATA
testFeatures  <- read.table(file.path(local_data, "test" , "X_test.txt" ),header = FALSE)
trainFeatures <- read.table(file.path(local_data, "train", "X_train.txt"),header = FALSE)

#READ ACTIVITY LABELS
activityLabels  <- read.table(file.path(local_data,  "activity_labels.txt" ),header = FALSE)
activityLabels[,2] <- as.character(activityLabels[,2])

#READ FEATURES
features <- read.table(file.path(local_data,  "features.txt" ),header = FALSE)
features[,2] <- as.character(features[,2])

#MERGING THE TRAINING AND TEST DATA
#Use rbind to take a sequence of data-frame arguments and combine by rows.
combinedSubject <- rbind(trainSubject, testSubject)
names(combinedSubject)<-c("subject")
combinedActivity <- rbind(trainActivities, testActivities)
names(combinedActivity)<-c("activity")
combinedFeatures <- rbind(trainFeatures, testFeatures)
names(combinedFeatures)<-features$V2
#Use cbind to take a sequence of data-frame arguments and combine by columms.

data <- cbind(combinedSubject, combinedActivity)
finalData <- cbind(combinedFeatures, data)

##2.Extracts only the measurements on the mean and standard deviation for each measurement.
finalData<-finalData[,c(grep("mean|std|activityLabel",features$V2,value = T),"activity","subject")]
colnames(finalData)<-sub("\\(\\)","",names(finalData))
 
#3.Uses descriptive activity names to name the activities in the data set
finalData$activity<-apply(finalData["activity"],1,function(x) activityLabels[x,2])


#4.Appropriately labels the data set with descriptive variable names.
names(finalData)<-gsub("^t", "time", names(finalData))
names(finalData)<-gsub("^f", "frequency", names(finalData))
names(finalData)<-gsub("Acc", "Accelerometer", names(finalData))
names(finalData)<-gsub("Gyro", "Gyroscope", names(finalData))
names(finalData)<-gsub("Mag", "Magnitude", names(finalData))
names(finalData)<-gsub("BodyBody", "Body", names(finalData))

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy<-aggregate(. ~subject + activity, finalData, mean)
tidy<-tidy[order(tidy$subject,tidy$activity),]
write.table(tidy, file = "tidydata.txt",row.name=FALSE)


