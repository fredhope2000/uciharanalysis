ReadMe for run_analysis.R
Fred Hope
24 Jan 2015

This script requires that the working directory contain the folder "UCI HAR Dataset".

The script reads the subject IDs, activities, and measurement data from the appropriate files. Because the data have been split into two sections, test and training, the script combines the two sections into a single data frame.

Next, the script reads the variable names from the features.txt file. It assigns these names to be the column names of our data frame, and also labels the activity and subject columns.

For this project, we are only interested in data collected on the means and standard deviations of the various measurements taken on the test subjects. Specifically, we will only use the raw coordinate data (variables ending in X, Y, or Z). The other mean and standard deviation variables are simply summaries of these raw data. Also, we will only use the original data, not the fourier transformed data. Thus, the script finds only variable names containing "mean" or "std" and ending in X, Y, or Z, and starting with t (not f). It filters out any columns that do not match these specifications.

Then, the script reads the file containing the activity names and their associated IDs, and assigns the names as labels of the factors in the Activity column. This is done in order for the activities to be presented as strings rather than numbers.

The script now moves the Subject and Activity columns to the left side of the data frame, for clarity. It was necessary to have them at the end earlier, so that the variable columns would match the indices returned by grepping through the features list.

Next, the script loops through every unique combination of subject and activity--there are 30 subjects and 6 activities, so 180 such combinations--and in each case, calculates the mean for each recorded variable. It constructs a new data frame consisting of the subject ID, activity name, and means of all the variables for that subject performing that activity.

The script now removes the hyphens and parentheses from the column names, so as to avoid any errors while processing or handling the data later.

Finally, the script writes the resulting data frame to a text file titled "tidydata.txt".