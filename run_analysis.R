######################################################################
#1.	Merges the training and the test sets to create one data set.
######################################################################

temp1 <- read.table("UCI HAR Dataset/train/X_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/X_test.txt")
X <- rbind(temp1, temp2)

temp1 <- read.table("UCI HAR Dataset/train/subject_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/subject_test.txt")
S <- rbind(temp1, temp2)

temp1 <- read.table("UCI HAR Dataset/train/y_train.txt")
temp2 <- read.table("UCI HAR Dataset/test/y_test.txt")
Y <- rbind(temp1, temp2)
