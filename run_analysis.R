## This files cleans the UCI HAR Data Set to create a tidy dataset.

# Read all the files into variables
  X_train <- read.table('UCI HAR Dataset/train/X_train.txt')
  y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
  subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')

  X_test <- read.table('UCI HAR Dataset/test/X_test.txt')
  y_test <- read.table('UCI HAR Dataset/test/y_test.txt')
  subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')

  features <- read.table('UCI HAR Dataset/features.txt')
  activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')

# Combine each of the individual data sets into one variable
  train_set <- cbind(X_train, y_train, subject_train)
  test_set <- cbind(X_test, y_test, subject_test)

# Combine the test and training data sets
  data <- rbind(train_set, test_set)

# Take a second to cleanup variables we no longer need
  rm('X_train', 'y_train', 'subject_train', 'X_test', 'y_test', 'subject_test', 'train_set', 'test_set')
  gc()

# TODO: Create a boolean vector of features that are means or standard deviations
  features_boolean <-

# TODO: Use feature boolean to remove extraneous features
  data <-

# TODO: Use feature names as descriptive variable names
  data <-

# TODO: Replace activity numbers with descriptive labels
  data <-

# TODO: Remove all temporary variables used in this file

# TODO: Create a summary dataset on the mean of each activity and for each subject
