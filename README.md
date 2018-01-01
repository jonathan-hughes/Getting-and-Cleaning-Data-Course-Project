# Getting and Cleaning Data Course Project

## Files in the project

run_analysis.R
tidy_data.txt
CodeBook.md
README.md

## run_analysis.R

The run_analysis.R file will take the raw data from the Human Activity Recongnition Using Smartphones Data Set. It is assumed that the dataset is present and unzipped in the working directory. 

The X_train.txt and X_test.txt files contains the individual accelerometer readings along with the mean and standard deviations of these data.

The features.txt file contains the identity of the X_* files columns and is used to provide column names to the combined data table.

The y_train.txt and y_test.txt files contain the activities of the subjects. 

The data contained in the Inertial Signals folders are not needed for this project.

The script combines both the training data and the test data into a single data table. The subjects (volunteers) activities are labeled in the activity_labels.txt file. These labels are used to replace the activity ID column in the combined train and test data set. 

This is accomplished by binding the three training and test data tables by row and then binding the three combined tables by column into a large data set. 

Then the activity column of the large data set is replaced with descriptive labels from the activity_labels.txt file.

Finally, the combined large data set is reduced down to only the Subject ID, Activity, and features containing the mean and standard deviation.

To make things more clear better descriptions for the data contained in the large data set are substituted for the abbreviated descriptions provided in the original data set.

Finally, the large data set is reduced to a tidy data set containing only the average mean and standard deviations for each subject and activity. This output is written out as tidy_data.txt.

## UCI HAR Data Set

The description of the UCI HAR Data Set is taken from the README.txt included with the Data Set.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
