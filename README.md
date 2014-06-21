Cleaning UCI HAR Data
=======================

Cleans "Human Activity Recognition Using Smartphones" dataset from UC Irvine

#####Original Data description:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#####Original data downloaded on June 18, 2014 from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (Original data also included in this repository)

##Description
UC Irvine provides a dataset of accelerometer data, the description of which can be found in the link above.

This project aims to create a tidy dataset from the original data. It will:
- Merge the training and the test sets to create one data set.
- Extract the measurements on the mean and standard deviation for each measurement.
- Replace activity numbers with descriptive activity names.
- Label the data set with descriptive variable names.
- Create an independent tidy data set with the average of each variable for each activity and each subject.

A more detailed step-by-step process is available in the comments of the run_analysis.R file.


## Files Provided
####run_analysis.R
> Performs the operations on the raw UCI HAR data to export a tidy dataset.

#####tidy_UCI_HAR.txt
> The tidy dataset as a text file. It can be imported into R using:

      data <- read.table('tidy_UCI_HAR.txt')

#####README.md
> A description of this project and its methods.

#####CODEBOOK.md
> A description of the fields in the tidy dataset.

---
Work performed by William Wnekowicz - william.wnekowicz@gmail.com
