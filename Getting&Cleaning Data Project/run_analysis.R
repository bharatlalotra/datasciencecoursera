## Course Project - Getting and Cleaning Data

# clear workspace
rm(list = ls())


# Step: 1
# read training data
train_data = read.table("./train/X_train.txt")
train_activitylabel = read.table("./train/y_train.txt")
train_subject = read.table("./train/subject_train.txt")

# read test data
test_data = read.table("./test/X_test.txt")
test_activitylabel = read.table("./test/y_test.txt")
test_subject = read.table("./test/subject_test.txt")

# merge traininig and test data to create one dataset
merged_data = merge(train_data,test_data,all=TRUE)
merged_activitylabel = rbind(train_activitylabel,test_activitylabel)
merged_subject = merge(train_subject,test_subject,all=TRUE)


# Read feature names (all)
variable_names = read.table("./features.txt")

# Assign feature names as the coloumn names for the merged data frame
colnames(merged_data)=variable_names$V2


# Step: 2
# extract indices of coloumns names having mean() or std()
columnnames=variable_names$V2
x = grepl("mean\\(\\)|std\\(\\)",columnnames, ignore.case = FALSE)
index=as.numeric(which(x==TRUE))

# create a subset of the merged data set (Extracting only the measurements on the mean and standard deviation for each measurement)
subset_data=merged_data[,index]

# add activity name to the dataframe
subset_data$ActivityType=merged_activitylabel$ V1

# read activity names(labels)
activity_names = read.table("./activity_labels.txt")

# Step: 3
# Use descriptive activity names to name the activities in the data set

for (i in 1:nrow(subset_data)){
       
        value=subset_data$Activity[i]
        
        index3=which(value==activity_names$V1)
        
        subset_data$ActivityType[i]=as.character((activity_names$V2[index3]))
        
}

# add subject name to the dataframe
subset_data$ID=merged_subject$ V1
Data=subset_data


# Step 5: Create a second,independent tidy data set and ouput it as a .txt file
Data2<-aggregate(. ~ID + ActivityType, Data, mean)
Data2<-Data2[order(Data2$ID,Data2$ActivityType),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)

str(Data2)
