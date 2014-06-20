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

# Create a index vector of features that are means or standard deviations
# and also manually add indexes for merged features (activity and subject)
  features_index <- c(grep('mean\\(\\)|std\\(\\)',features$V2), 562, 563)

# Create a vector of names based on features and also manually add names for
# merged features (activity and subject)
  feature_names <- c(as.character(features$V2), "Activity", "Subject")

# Use feature names as descriptive variable names
  names(data) <- features_names

# Use feature index to remove extraneous features
  data <- data[,features_index]

# Replace activity numbers with descriptive labels
  data$Activity <- activity_labels[data$Activity, 2]

# Take another second to remove all temporary variables used in this file
  rm('features', 'activity_labels', 'features_index', 'feature_names')
  gc()

# Export the tidy dataset
  write.table(data, "tidy_UCI_HAR.txt")

# TODO: Create and export a summary dataset on the mean of each activity and for
# each subject
