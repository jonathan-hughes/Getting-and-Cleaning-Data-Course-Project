## Getting and Cleaning Data course project
##
## 1. Merges the training and the test sets to create one data set.
##
## 2. Extracts only the measurements on the mean and standard deviation for each
##    measurement.
##
## 3. Uses descriptive activity names to name the activities in the data set
##
## 4. Appropriately labels the data set with descriptive variable names.
##
## 5. From the data set in step 4, creates a second, independent tidy data set
##    with the average of each variable for each activity and each subject.

## Need this library to create the tiny dataset
library(dplyr)

## Load in the descriptive activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Load in the features which we will use for column names in the combined data set
features <- read.table("./UCI HAR Dataset/features.txt")

## Load in the training data (only need the following three files)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Load in the test data (only need the following three files)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## Construct a merged data set from the six tables we have
subjects <- rbind(subject_train, subject_test)
values <- rbind(X_train, X_test)
activities <- rbind(y_train, y_test)

## Clean up the original data frames as they are no longer needed
rm(subject_train, subject_test, X_train, X_test, y_train, y_test)

## Combine the subjects, activities, and values datasets into one large dataset
large_data <- cbind(subjects, activities, values)

## Clean up more large datasets no longer needed
rm(subjects, activities, values)

## Add column names to the large dataset getting the labels from features
colnames(large_data) <- c("Subject", "Activity", as.character(features[, 2]))

## Replace Activity column numbers with text names from activity_labels dataset
large_data$Activity <- factor(large_data$Activity, levels = activity_labels[,1],
                              labels = activity_labels[,2])

## More cleanup
rm(features, activity_labels)

## Now remove all columns that are not desired (everything that doesn't have
## mean() or std() in it)
large_data <- large_data[, grep("Subject|Activity|mean\\(\\)|std\\(\\)", colnames(large_data))]

## Now substitute in some better descriptive columns names for the data values
colnames(large_data) <- gsub("^t", "TimeDomain", colnames(large_data))
colnames(large_data) <- gsub("^f", "FrequencyDomain", colnames(large_data))
colnames(large_data) <- gsub("BodyBody", "Body", colnames(large_data)) # Remove duplicate found in frequency domain data
colnames(large_data) <- gsub("Acc", "Acceleration", colnames(large_data))
colnames(large_data) <- gsub("Gyro", "Gyroscope", colnames(large_data))
colnames(large_data) <- gsub("Gravity", "Gravity", colnames(large_data))
colnames(large_data) <- gsub("Mag", "Magnitude", colnames(large_data))
colnames(large_data) <- gsub("-mean\\(\\)", "Mean", colnames(large_data))
colnames(large_data) <- gsub("-std\\(\\)", "StandardDeviation", colnames(large_data))

## Now create a tidy dataset with only the average of each variable for each
## subject and activity
tidy_data <- large_data %>%
    group_by(Subject, Activity) %>%
    summarize_all(mean)

## Change the column names to reflect that they now represent the average of the
## value
colnames(tidy_data) <- c("Subject", "Activity",
                         paste("Average", colnames(tidy_data[,3:length(tidy_data)]), sep = ""))

## Finally, write out the file as txt file.
write.table(tidy_data, "tidy_data.txt", row.names = FALSE, quote = FALSE)