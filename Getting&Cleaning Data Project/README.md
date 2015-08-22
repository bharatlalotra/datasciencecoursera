==================================================================
Getting and Cleaning Data Project R Code
==================================================================

Script name:run_analysis.R 

Details on how the script works:
- As a first step, the training data set is read. Thereafter, the test data is read.
- Following this, the training and the test data sets are merged to create one dataset called as "merged_data"
- Next, the activity labels and the partcipant IDs are  read.
- Following this, all the feature names are read and assigned as the coloumn names for the merged data frame.
- Next, the indices of coloumns names having mean() or std() are extracted and saved in the varaible called "index"
- Following this, a subset data frame called "subset_data" is created using indices extracted in the above step.
- Next, descriptive activity names are added to the dataframe.
- Finally, an independent tidy data set called ""tidydata.txt" with the average of each variable for each activity and each subject is created.