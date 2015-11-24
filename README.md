# Getting_and_Cleaning_Data_Course_Project
# Repository for the Course Project
#The R script called run_analysis.R that does the following. 



#1.Merges the training and the test sets to create one data set. 
see lines from 42 to 53
We need to install packages("plyr") 
GET DATA 
READ ACTIVITY DATA  
READ SUBJECT DATA 
READ FEATURES DATA 
READ ACTIVITY LABELS 
READ FEATURES 
MERGE THE TRAINING AND TEST DATA 

#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
USE grep("mean|std|activityLabel",features$V2,value = T) 
see lines from 55 to 57
#3.Uses descriptive activity names to name the activities in the data set 
see lines from 59 to 60
 
#4.Appropriately labels the data set with descriptive variable names. 
USE gsub, ex. names(finalData)<-gsub("^f", "frequency", names(finalData)) 
SEE lines from 63 to 69
 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
USE write.table, ex. write.table(tidy, file = "tidydata.txt",row.name=FALSE) 
The tidy.txt file is a data set with the average of each variable. Variables are described in CodeBook.md 

SEE lines from 71 to 75
