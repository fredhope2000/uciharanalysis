CodeBook for run_anaysis.R
Fred Hope
24 Jan 2015

This script reads in files from the UCI HAR Dataset and outputs a text file containing summaries of select portions of the data.

See the README.md file for more detail of how exactly the code works.

The output file is written from a data frame consisting of 32 columns, with names as follows:

Column Name				Description

Subject					Subject ID, ranging from 1-30
Activity				Activity Name, one of {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}
tBodyAccMeanX			time body accelerometer signal mean, X direction
tBodyAccMeanY			time body accelerometer signal mean, Y direction
tBodyAccMeanZ			time body accelerometer signal mean, Z direction
tBodyAccStdX			time body accelerometer signal standard deviation, X direction
tBodyAccStdY			time body accelerometer signal standard deviation, Y direction
tBodyAccStdZ			time body accelerometer signal standard deviation, Z direction
tGravityAccMeanX		time gravity accelerometer signal mean, X direction
tGravityAccMeanY		time gravity accelerometer signal mean, Y direction
tGravityAccMeanZ		time gravity accelerometer signal mean, Z direction
tGravityAccStdX			time gravity accelerometer signal standard deviation, X direction
tGravityAccStdY			time gravity accelerometer signal standard deviation, Y direction
tGravityAccStdZ			time gravity accelerometer signal standard deviation, Z direction
tBodyAccJerkMeanX		time body accelerometer jerk signal mean, X direction
tBodyAccJerkMeanY		time body accelerometer jerk signal mean, Y direction
tBodyAccJerkMeanZ		time body accelerometer jerk signal mean, Z direction
tBodyAccJerkStdX		time body accelerometer jerk signal standard deviation, X direction
tBodyAccJerkStdY		time body accelerometer jerk signal standard deviation, Y direction
tBodyAccJerkStdZ		time body accelerometer jerk signal standard deviation, Z direction
tBodyGyroMeanX			time body gyroscope signal mean, X direction
tBodyGyroMeanY			time body gyroscope signal mean, Y direction
tBodyGyroMeanZ			time body gyroscope signal mean, Z direction
tBodyGyroStdX			time body gyroscope signal standard deviation, X direction
tBodyGyroStdY			time body gyroscope signal standard deviation, Y direction
tBodyGyroStdZ			time body gyroscope signal standard deviation, Z direction
tBodyGyroJerkMeanX		time body gyroscope jerk signal mean, X direction
tBodyGyroJerkMeanY		time body gyroscope jerk signal mean, Y direction
tBodyGyroJerkMeanZ		time body gyroscope jerk signal mean, Z direction
tBodyGyroJerkStdX		time body gyroscope jerk signal standard deviation, X direction
tBodyGyroJerkStdY		time body gyroscope jerk signal standard deviation, Y direction
tBodyGyroJerkStdZ		time body gyroscope jerk signal standard deviation, Z direction