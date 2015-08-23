#Data source

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


#Files

The following files are included (this information was copied from the README.txt file):

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

#Tidy Data
- The tidy data set is contained within the file tidydata.txt. 
- This can be  read with R function read.table().

Table structure:

- row structure

*180 rows resulting from 30 test subjects during 6 tested activities*

- column structure

*col 1: subject id value range 1 .. 30*

*col 2: activity label value range LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS*

*col 3 ... col 68: original measurements aggregated as either the mean value of the measured means or the mean value of the measured standard deviations*