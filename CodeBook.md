# Getting_and_Cleaning_Data_Course_Project
Repository for the Course Project
Collection of the raw data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

# The tidy data file

Download the data file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. There is a directory "UCI HAR Dataset" which contains all the necessary files and directories. You should put this directory inside your working directory in R-studio and then run the run_analysis.R script. This will create a data frame named "finaldata", which the tidy data we want to produce. 

# See README.md file

The main Identifiers are:
1. Subject - ID of the test
2. Activity - Type of activity

Activity Labels: 
WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


The tidy.txt file contain these features (columms names):
 [1] "subject"                                         
 [2] "activity"                                        
 [3] "timeBodyAccelerometer-mean-X"                    
 [4] "timeBodyAccelerometer-mean-Y"                    
 [5] "timeBodyAccelerometer-mean-Z"                    
 [6] "timeBodyAccelerometer-std-X"                     
 [7] "timeBodyAccelerometer-std-Y"                     
 [8] "timeBodyAccelerometer-std-Z"                     
 [9] "timeGravityAccelerometer-mean-X"                 
[10] "timeGravityAccelerometer-mean-Y"                 
[11] "timeGravityAccelerometer-mean-Z"                 
[12] "timeGravityAccelerometer-std-X"                  
[13] "timeGravityAccelerometer-std-Y"                  
[14] "timeGravityAccelerometer-std-Z"                  
[15] "timeBodyAccelerometerJerk-mean-X"                
[16] "timeBodyAccelerometerJerk-mean-Y"                
[17] "timeBodyAccelerometerJerk-mean-Z"                
[18] "timeBodyAccelerometerJerk-std-X"                 
[19] "timeBodyAccelerometerJerk-std-Y"                 
[20] "timeBodyAccelerometerJerk-std-Z"                 
[21] "timeBodyGyroscope-mean-X"                        
[22] "timeBodyGyroscope-mean-Y"                        
[23] "timeBodyGyroscope-mean-Z"                        
[24] "timeBodyGyroscope-std-X"                         
[25] "timeBodyGyroscope-std-Y"                         
[26] "timeBodyGyroscope-std-Z"                         
[27] "timeBodyGyroscopeJerk-mean-X"                    
[28] "timeBodyGyroscopeJerk-mean-Y"                    
[29] "timeBodyGyroscopeJerk-mean-Z"                    
[30] "timeBodyGyroscopeJerk-std-X"                     
[31] "timeBodyGyroscopeJerk-std-Y"                     
[32] "timeBodyGyroscopeJerk-std-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean"             
[34] "timeBodyAccelerometerMagnitude-std"              
[35] "timeGravityAccelerometerMagnitude-mean"          
[36] "timeGravityAccelerometerMagnitude-std"           
[37] "timeBodyAccelerometerJerkMagnitude-mean"         
[38] "timeBodyAccelerometerJerkMagnitude-std"          
[39] "timeBodyGyroscopeMagnitude-mean"                 
[40] "timeBodyGyroscopeMagnitude-std"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean"             
[42] "timeBodyGyroscopeJerkMagnitude-std"              
[43] "frequencyBodyAccelerometer-mean-X"               
[44] "frequencyBodyAccelerometer-mean-Y"               
[45] "frequencyBodyAccelerometer-mean-Z"               
[46] "frequencyBodyAccelerometer-std-X"                
[47] "frequencyBodyAccelerometer-std-Y"                
[48] "frequencyBodyAccelerometer-std-Z"                
[49] "frequencyBodyAccelerometer-meanFreq-X"           
[50] "frequencyBodyAccelerometer-meanFreq-Y"           
[51] "frequencyBodyAccelerometer-meanFreq-Z"           
[52] "frequencyBodyAccelerometerJerk-mean-X"           
[53] "frequencyBodyAccelerometerJerk-mean-Y"           
[54] "frequencyBodyAccelerometerJerk-mean-Z"           
[55] "frequencyBodyAccelerometerJerk-std-X"            
[56] "frequencyBodyAccelerometerJerk-std-Y"            
[57] "frequencyBodyAccelerometerJerk-std-Z"            
[58] "frequencyBodyAccelerometerJerk-meanFreq-X"       
[59] "frequencyBodyAccelerometerJerk-meanFreq-Y"       
[60] "frequencyBodyAccelerometerJerk-meanFreq-Z"       
[61] "frequencyBodyGyroscope-mean-X"                   
[62] "frequencyBodyGyroscope-mean-Y"                   
[63] "frequencyBodyGyroscope-mean-Z"                   
[64] "frequencyBodyGyroscope-std-X"                    
[65] "frequencyBodyGyroscope-std-Y"                    
[66] "frequencyBodyGyroscope-std-Z"                    
[67] "frequencyBodyGyroscope-meanFreq-X"               
[68] "frequencyBodyGyroscope-meanFreq-Y"               
[69] "frequencyBodyGyroscope-meanFreq-Z"               
[70] "frequencyBodyAccelerometerMagnitude-mean"        
[71] "frequencyBodyAccelerometerMagnitude-std"         
[72] "frequencyBodyAccelerometerMagnitude-meanFreq"    
[73] "frequencyBodyAccelerometerJerkMagnitude-mean"    
[74] "frequencyBodyAccelerometerJerkMagnitude-std"     
[75] "frequencyBodyAccelerometerJerkMagnitude-meanFreq"
[76] "frequencyBodyGyroscopeMagnitude-mean"            
[77] "frequencyBodyGyroscopeMagnitude-std"             
[78] "frequencyBodyGyroscopeMagnitude-meanFreq"        
[79] "frequencyBodyGyroscopeJerkMagnitude-mean"        
[80] "frequencyBodyGyroscopeJerkMagnitude-std"         
[81] "frequencyBodyGyroscopeJerkMagnitude-meanFreq" 
