######################################################################
#1.	Merges the training and the test sets to create one data set.
######################################################################

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(x_train, x_test)

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(y_train, y_test)

s_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
S <- rbind(s_train, s_test)

######################################################################
#2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
######################################################################
features <- read.table("UCI HAR Dataset/features.txt")
# only the ones with "mean" or "std" on the names
searched_features <- grep("-(mean|std)\\(\\)", features[, 2])
#print(searched_features)
# subset with the searched_features
X <- X[, searched_features]
# the names of the only selected feature
names(X) <- features[searched_features, 2]
#eliminate the "()"
names(X) <- gsub("\\(|\\)", "", names(X))
print("-------------------------")
print(names(X))


######################################################################
#3.	Uses descriptive activity names to name the activities in the data set
######################################################################
activity <- read.table("UCI HAR Dataset/activity_labels.txt")


######################################################################
#4.	Appropriately labels the data set with descriptive variable names. 
######################################################################


######################################################################
#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activ
######################################################################
