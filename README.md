==================================================================
### Final Assignment for Getting and Cleaning Data
## Version 1.0
==================================================================
## Tamara Rosner
==================================================================

These files clean up the data obtained from the smartphone data set: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

See their README file provided with the smartphone data set for more information regarding 
the experiments conducted to obtain those data.

==================================================================

# The following were the basic steps taken when cleaning the data:
1. Replacing variable names in the test set and training set data with variable names obtained 
   from the 'features' file (listed as step 4 in assignment).
2. Merging the test and training set data together (along with subject and activity information).
3. Selecting out only the mean and standard deviation measures from the full data set; note: this 
   was made simpler by completing "step 4" on the assignment first.
4. Ensuring the information in the 'activity' variable is meaningful by replacing the numbers with 
   the proper activity, as provided by the 'activity_labels' file.
5. Creating a tidy data set by taking the average of each subject and activity for each measurement 
   and outputting that to a new table.


# The final data set (created by 'run_analysis.R' and saved in 'tidy_phone_data.csv') fulfills the 
requirements for tidy data, as specified by Hadley Wickham: http://vita.had.co.nz/papers/tidy-data.pdf
1. Each variable forms a column: each column holds information for a single variable. 
2. Each observation forms a row: there is one row for each subject performing one of the six activities.
3. Each type of observational unit forms a table: The table contains data on the mean and standard deviation
   of measures of movement. 
   

=========================================

# The current dataset includes the following files:

- 'README.md'

- 'run_analysis.R': Code that reads in and cleans up the data files and outputs a tidy data set.

- 'tidy_phone_data.txt': The tidy data set provided by run_analysis.R.

- 'CodeBook.md': A code book that describes the variables in tidy_phone_data.csv.

