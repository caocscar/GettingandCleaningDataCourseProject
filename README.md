# Getting and Cleaning Data Course Project
Getting and Cleaning Data Course Project for Coursera 

## run_Analysis.R
This R script takes the data from the UCI HAR Dataset and does the following:

1. Merges the training and the test sets to create a single data set.
2. Extracts the variables that contain the mean and standard deviation summary statistic for each measurement. 
3. Replaces the activity code with the activity name for clarity.
4. Renames the variables to be more verbose. 
5. From the data set in step 4, creates a second, independent tidy data set (dataset2.txt) with the average of each variable grouped by activity and subject.

### Dataset Reference
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
