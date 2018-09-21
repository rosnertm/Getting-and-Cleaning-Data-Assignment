#### Code for Getting and Cleaning Data Final Assignment #### 
#### This code grabs the data collected via Smart Phone on body movement and cleans the data, creating a tidy data set

#### Need to obtain the relevant files
## Download the zip file
zipfile_url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(zipfile_url, destfile = ".\\zip_file.zip")
unzip('zip_file.zip')

## Read in relevant files
## Subject numbers of test subjects
testfile_subject <- '.\\UCI HAR Dataset\\test\\subject_test.txt'
test_subject <- read.table(testfile_subject)

## Data for test subjects
testfile_x <- '.\\UCI HAR Dataset\\test\\X_test.txt'
test_x <- read.table(testfile_x)

## Activities performed by test subjects
testfile_y <- '.\\UCI HAR Dataset\\test\\y_test.txt'
test_y <- read.table(testfile_y)

## Subject numbers of training subjects
trainfile_subject <- '.\\UCI HAR Dataset\\train\\subject_train.txt'
train_subject <- read.table(trainfile_subject)

## Data for training subjects
trainfile_x <- '.\\UCI HAR Dataset\\train\\X_train.txt'
train_x <- read.table(trainfile_x)

## Activities performed by training subjects
trainfile_y <- '.\\UCI HAR Dataset\\train\\y_train.txt'
train_y <- read.table(trainfile_y)

## Variable names for variables meaured
features_file <- '.\\UCI HAR Dataset\\features.txt'
features <- read.table(features_file)

## Descriptive activity corresponding to a number (as coded in the 'y' files)
activities_file <- '.\\UCI HAR Dataset\\activity_labels.txt'
activities <- read.table(activities_file)



#### Replacing column names in 'x' files based on values in the feature file. This fulfills step 4 of the assignment:
#### 4. Appropriately labels the data set with descriptive variable names.
## Note: I am doing this step out of order as it makes later steps much simpler to perform
new_names <- as.character(features$V2) ## have col names in a vector
colnames(test_x) <- new_names ## replace column names with new names pulled from features
colnames(train_x) <- new_names
names(test_x) ## check that columns have been renamed
names(train_x)




#### Putting 6 separate data sets ('x', 'y', and 'subject' training and test data). This fulfills step 1 of the assignment:
#### 1. Merges the training and the test sets to create one data set.

## First, bind similar data types by row (e.g., put test_x and train_x together using rbind)
## note: different subject numbers in test and training sets
unique(train_subject)
unique(test_subject)

## join y data sets together
activity_data <- rbind(train_y,test_y)
## ensure all rows are present in new data set and check data
identical(nrow(activity_data),(nrow(train_y)+nrow(test_y))) 
head(activity_data)          
tail(activity_data)
dim(activity_data)
colnames(activity_data) <- 'activity' ## rename column to something more meaningful

## join x data sets together
collected_data <- rbind(train_x,test_x)
## ensure all rows are present in new data set and check data
identical(nrow(collected_data),(nrow(train_x)+nrow(test_x))) ## ensure all rows are present in new data set
dim(collected_data)

## join subject data sets together
subject_data <- rbind(train_subject,test_subject)
## ensure all rows are present in new data set and check data
identical(nrow(subject_data),(nrow(train_subject)+nrow(test_subject))) ## ensure all rows are present in new data set
head(subject_data)          
tail(subject_data)
dim(subject_data)
colnames(subject_data) <- 'subject' ## rename column to something more meaningful

## Join collected data, activity, and subject sets together by column; first, ensure all 3 have same number of rows
nrow(subject_data) == nrow(activity_data) & nrow(activity_data) == nrow(collected_data)
## create a full data set with subject data, activity data, and collected data
full_data_set <- cbind(subject_data,activity_data,collected_data)
## check data
head(full_data_set)
summary(full_data_set)
names(full_data_set)
str(full_data_set)
dim(full_data_set) 
## Now have a single data set in which there are multiple rows of measurements for each subject and activity (e.g., observed subject 1 walking multiple times)



#### Obtaining only measurments corresponding to mean and standard deviation. This fulfills step 2 of the assignment:
#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## Extract columns with mean and stdev values; also extract subject and activity info as this is necessary for understanding the data
grep('subject|activity|mean\\(|std',names(full_data_set), value = T) ## pulling out var names that contain subject, activity, mean(, and std and printing them to console to ensure correct names are pulled
                                                                     ## note: need mean( specifically to not pull meanFreq measurements
                                                                     ## written as mean\\( in code as escape chars are needed to ensure ( is read as text
select_set_l <- grepl('subject|activity|mean\\(|std',names(full_data_set)) ## create logical vector using above grep command
select_set <- full_data_set[,select_set_l] ## use that logical vector to subset out the columns of interest into a new data set
## check data
head(select_set)
summary(select_set)
names(select_set)
str(select_set)
dim(select_set)




#### Replace numbers in 'activity' column with more descriptive vars using the activity_labels file. This fulfills step 3 of the assignment:
#### 3. Uses descriptive activity names to name the activities in the data set
## replace vars in y file with activities
select_set$activity <- gsub(1,tolower(activities$V2[1]),select_set$activity) ## use gsub to replace all instances of 1 in 'activity' column with the appropriate activity in second column of activities data set
select_set$activity <- gsub(2,tolower(activities$V2[2]),select_set$activity) ## use gsub to replace all instances of 2 with the appropriate activity
select_set$activity <- gsub(3,tolower(activities$V2[3]),select_set$activity) ## use gsub to replace all instances of 3 with the appropriate activity
select_set$activity <- gsub(4,tolower(activities$V2[4]),select_set$activity) ## use gsub to replace all instances of 4 with the appropriate activity
select_set$activity <- gsub(5,tolower(activities$V2[5]),select_set$activity) ## use gsub to replace all instances of 5 with the appropriate activity
select_set$activity <- gsub(6,tolower(activities$V2[6]),select_set$activity) ## use gsub to replace all instances of 6 with the appropriate activity
## check to ensure changes were properly made
head(select_set$activity) 
tail(select_set$activity)
summary(select_set$activity)
str(select_set$activity)

## Rename a few columns at the end of data set; vars in columns 63-68 contain double words (i.e., "BodyBody") and fixing here for the sake of clarity
columnNames <- names(select_set)
badNames <- columnNames[63:68]
goodNames <- sub("Body","",badNames) ## finds first instance of 'Body' and replaces it with an empty string; leaves second instance of body
colnames(select_set)[63:68] <- goodNames
## check change was made properly
names(select_set)

#### Obtain the mean of each measurement for each subject and activity and put into a new data set. This fulfills step 5 of the assignment:
#### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## want to get means of each value for each subject
## use groupby function in dplyr
library(dplyr)
grouped_set <- group_by(select_set, subject, activity)
summarized_data <- summarize_all(grouped_set,funs(mean))
summarized_data

## this is the tidy data set!
## each var forms a column: each column is the mean of the specified value 
## each observation forms a row: each row corresponds to a subject and the associated activity
## each table/file stores data about one kind of observation: yes; the kind of observation is activity for each subject

## write the tidy data set into a new file
write.table(summarized_data, file='.\\tidy_phone_data.txt', row.names = FALSE)
## check tidy data set
tidy_data <- read.table('tidy_phone_data.txt', header = TRUE)
View(tidy_data)
head(tidy_data)

     