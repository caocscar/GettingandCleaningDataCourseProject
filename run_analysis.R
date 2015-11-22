# 1. Merges the training and the test sets to create one data set.

# Read in training data
setwd(".UCI HAR Dataset/train")
xtrain = read.table("X_train.txt", header=F, sep="")
ytrain = read.table("y_train.txt", header=F, sep="", col.names="Activity_Code")
subject_train = read.table("subject_train.txt", header=F, sep="", col.names="Subject")

# Read in testing data
setwd("../test")
xtest = read.table("X_test.txt", header=F, sep="")
ytest = read.table("y_test.txt", header=F, sep="", col.names="Activity_Code")
subject_test = read.table("subject_test.txt", header=F, sep="", col.names="Subject")

# Read in column headers
setwd("../..")
features = read.csv("features.txt", header=F, sep="")

# Concatenating training and testing dataframes
x = rbind(xtrain,xtest)
y = rbind(ytrain,ytest)
subject = rbind(subject_train,subject_test)

# Assigning column headers
colnames(x) <- features[,2]

# Concatenating subject, activity, sensor data
data <- cbind(y,subject,x)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Create patterns for regular expressions
pattern1 <- "mean()"
pattern2 <- "std()"
col1 <- grep(pattern1, colnames(data), fixed=T)
col2 <- grep(pattern2, colnames(data), fixed=T)
# Sort column index
cols <- sort(c(1,2,col1,col2))
# Extract only select columns
tidy_data <- data[,cols]

# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.csv("activity_labels.txt", header=F, sep="", col.names=c("Activity_Code","Activity"))
tidy <- merge(activity_labels, tidy_data, by="Activity_Code", all=TRUE)
tidy <- subset(tidy, select=-Activity_Code)

# 4. Appropriately labels the data set with descriptive variable names.

# Grab column names and replace substrings using regular expressions
headers <- colnames(tidy)
headers <- gsub("-","",headers)
headers <- gsub("BodyBody","Body",headers)
headers <- gsub("Body","Body_",headers)
headers <- gsub("Gravity","Gravity_",headers)
headers <- gsub("Jerk","Jerk_",headers)
headers <- gsub("mean()","mean_",headers, fixed = TRUE)
headers <- gsub("std()","stdev_",headers, fixed = TRUE)
headers <- gsub("^t","time-domain_",headers)
headers <- gsub("^f","frequency-domain_",headers)
headers <- gsub("Acc","accelerometer_",headers)
headers <- gsub("X$","x-axis",headers)
headers <- gsub("Y$","y-axis",headers)
headers <- gsub("Z$","z-axis",headers)
headers <- gsub("Gyro","gyroscope_",headers)
headers <- gsub("Mag","magnitude_",headers)
headers <- gsub("_$","",headers)
# Reassign column names
colnames(tidy) <- headers

# 5. From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.

# Reshape dataframe from wide to long
library(reshape2)
melted <- melt(tidy, id.vars=c("Activity","Subject"))
# Split-Apply-Combine dataframe
library(dplyr)
tidy2 <- summarise(group_by(melted, Activity, Subject, variable), mean=mean(value))
# Write to file
write.table(tidy2, file="dataset2.txt", row.names=F)
