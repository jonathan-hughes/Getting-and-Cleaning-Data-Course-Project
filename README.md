# Getting and Cleaning Data Course Project

## Files in the project

- run_analysis.R
- tidy_data.txt
- CodeBook.md
- README.md

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

## CodeBook.md

CodeBook describing the tidy_data.txt file output of the run_analysis.R script.

## README.md

This file.

