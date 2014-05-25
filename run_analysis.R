library(plyr)
library(reshape)

# read both datasets,features, activity labels, and dataset activities
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt") # there are 561
act_label <- read.table("./UCI HAR Dataset/activity_labels.txt") # activity number 1-6 .. standing/walking/laying ...
train_act <- read.table("./UCI HAR Dataset/train/y_train.txt") # about 7000 tells activity number
test_act <- read.table("./UCI HAR Dataset/test/y_test.txt") # about 3000, tells activity number
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt") # reads subject ids 
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt") # reads in subjetc ids

# read feature file and get index of mean and std features
# exclude derived features
ind_m_std <- grepl("([Mm]ean|[Ss]td)",features[,2])
ind_toexclude<- grepl("([Aa]ngle|[Jj]erk|[Mm]ag|^f)",features[,2])
# create final index, with only the desired features
ind_final <- (ind_m_std&!ind_toexclude)

# subset datasets to use only selected features
train <- train[,ind_final]
test <- test[,ind_final]

# join the activity names to train_act and test_act
train_act <- join(train_act,act_label,"V1")
test_act <- join(test_act,act_label,"V1")
all_act_labels <- rbind(train_act, test_act) # activities of all observations
names(all_act_labels) <- c("activitynum","activity")

# join the train and test subjects by adding test subjects to the bottom of train subjects
all_subjects <- rbind(train_subject, test_subject)
names(all_subjects) <- "subjectid"

#join the training and testing data
merged_data <- merge(train, test, all=TRUE)

# name the features, descriptive activity names
names(merged_data) <- tolower(gsub("[(),-]","",features[ind_final,2]))

# add columns all subjects, activity labels (number and activity) to the right of merged_data
merged_data <- cbind(all_subjects,all_act_labels,merged_data)

# create the second dataset
melted_data <- melt(merged_data, id.vars = c("subjectid", "activitynum","activity"))
second_dataset <- cast(subjectid + activitynum + activity ~ variable, data = melted_data, fun = mean)

# write files of both datasets
write.table(file="UCIHarDataset_tidy.txt",x=merged_data)
write.table(file="UCIHarDataset_averages.txt",x=second_dataset)