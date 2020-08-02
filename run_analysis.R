library(dplyr)
library(data.table)

# 1. Merging training and test sets to create one data set

# 1.1 Reading files 

# 1.1.1 Reading test tables
directory_test <- "C:/Users/kawai/Documents/rprog/UCI HAR Dataset/test"
x_test <- file.path(directory_test, "X_test.txt")
x_test <- read.table(x_test)
y_test <- file.path(directory_test, "y_test.txt")
y_test <- read.table(y_test)
subject_test <- file.path(directory_test, "subject_test.txt")
subject_test <- read.table(subject_test)

#1.1.2 Reading training tables
directory_train <- "C:/Users/kawai/Documents/rprog/UCI HAR Dataset/train"
x_train <- file.path(directory_train, "X_train.txt")
x_train <- read.table(x_train)
y_train <- file.path(directory_train, "y_train.txt")
y_train <- read.table(y_train)
subject_train <- file.path(directory_train, "subject_train.txt")
subject_train <- read.table(subject_train)

#1.1.3 Reading feature vector and activity labels
directory_main <- "C:/Users/kawai/Documents/rprog/UCI HAR Dataset"
features <- file.path(directory_main, "features.txt")
features <- read.table(features)
activities <- file.path(directory_main, "activity_labels.txt")
activities <- read.table(activities)

#1.2 Merging all respective test and training tables 

#1.2.1 Merging test tables
x_test_all <- cbind(x_test, y_test, subject_test)

#1.2.2 Merging training tables
x_train_all <- cbind(x_train, y_train, subject_train)

#1.3 Merging all tables into one data set
test_train <- rbind(x_test_all, x_train_all)

#1.4 Assigning relevant column names
features <- rbind(features, "Activity", "Subject")
names(test_train) <- features$V2

#2. Extracting the mean and standard deviation for each measurement
mean_std <- select(test_train, Activity, Subject, contains("mean"), contains("std"))

#3. Using descriptive activity names to name the activities in the data set
mean_std$Activity <- activities[mean_std$Activity, 2]

#4. Labeling the data set with descriptive variable names
names(mean_std) <- gsub("Acc", "Accelerometer", names(mean_std))
names(mean_std) <- gsub("^t", "Time", names(mean_std))
names(mean_std) <- gsub("Gyro", "Gyroscope", names(mean_std))
names(mean_std) <- gsub("Mag", "Magnitude", names(mean_std))
names(mean_std) <- gsub("^f", "Frequency", names(mean_std))
names(mean_std) <- gsub("meanFreq", "MeanFrequency", names(mean_std))
names(mean_std) <- gsub("mean", "Mean", names(mean_std))
names(mean_std) <- gsub("std", "StandardDeviation", names(mean_std))
names(mean_std) <- gsub("[()]", "", names(mean_std))
names(mean_std) <- gsub("BodyBody", "Body", names(mean_std))
names(mean_std) <- gsub("anglet", "Angle-Time", names(mean_std))
names(mean_std) <- gsub("angle", "Angle", names(mean_std))
names(mean_std) <- gsub("gravity", "Gravity", names(mean_std))

#5. Creating an independent tidy data set with the average of each variable for each activity and subject

#5.1 Creating a second tidy data set
mean_std_tidy <- mean_std %>% group_by(Activity, Subject) %>% summarise_all(list(mean))

#5.2 Writing second tidy data set into a text file
write.table(mean_std_tidy, "mean_std_tidy.txt", row.name=FALSE)
