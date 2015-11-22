# Getting and Cleaning Data Course Project
Getting and Cleaning Data Course Project for Coursera 

## run_analysis.R
This R script takes the data from the UCI HAR Dataset and does the following:

1. Reads in the training and testing data for the variables, subject and activity. It then merges the training and the test sets to create a single dataset for variables, subject and activity. Then the variable, subject and activity datasets are combined into one dataframe.
2. Extracts the variables that contain the mean and standard deviation summary statistic for each measurement. A new dataframe is created. 
3. From the dataframe in #2, it replaces the activity code with the activity name for clarity using the data dictionary provided in **activity_labels.txt**
4. Renames the variables to be more verbose. 
5. From the dataframe in #4, the script creates an output dataset **dataset2.txt** with the average of each variable grouped by activity and subject.

Additional detail is provided as comments in the script.

## codebook.md
A codebook is provided as an overview of the variables contained in **dataset2.txt**. 

### Dataset Reference
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
