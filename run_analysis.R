if(!require("data.table")) {
  install.packages("data.table")
}
if(!require("reshape")) {
  install.packages("reshape")
}
library(data.table)
library(reshape)

## Initialise variables
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
data_file <- "getdata_projectfiles_UCI HAR Dataset.zip"

# Now get it from the web:
download.file(file_url, destfile = data_file)
unzip(zipfile = data_file)

# Open data files:
activity_labels <- fread(file.path("UCI HAR Dataset/activity_labels.txt"), col.names = c("classLabels", "activityName"))
features <- fread(file.path("UCI HAR Dataset/features.txt"), col.names = c("index", "featureNames"))
featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])
measurements <- features[featuresWanted, featureNames]
measurements <- gsub('[()]', '', measurements)

train_dataset <- fread(file.path("UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(train_dataset, colnames(train_dataset), measurements)
trainActivities <- fread(file.path("UCI HAR Dataset/train/Y_train.txt"), col.names = c("Activity"))
trainSubjects <- fread(file.path("UCI HAR Dataset/train/subject_train.txt"), col.names = c("SubjectNum"))
train <- cbind(trainSubjects, trainActivities, train_dataset)

# The test dataset and its related files:
test_dataset <- fread(file.path("UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(test_dataset, colnames(test_dataset), measurements)
testActivities <- fread(file.path("UCI HAR Dataset/test/Y_test.txt"), col.names = c("Activity"))
testSubjects <- fread(file.path("UCI HAR Dataset/test/subject_test.txt"), col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test_dataset)


## Create a merged dataset from the above two raw datasets:
merged_dataset <- rbind(train_dataset, test_dataset)
merged_dataset$Activity <- factor(merged_dataset$Activity, levels = activity_labels[["classLabels"]], labels = activity_labels[["activityName"]])
                              
merged_dataset$SubjectNum <- as.factor(merged_dataset$SubjectNum)
merged_dataset <- reshape2::melt(data = merged_dataset, id = c("SubjectNum", "Activity"))
merged_dataset <- reshape2::dcast(data = merged_dataset, SubjectNum + Activity ~ variable, fun.aggregate = mean)                            


# Now save the tidy data set to "final-tidy-data.txt"
data.table::fwrite(x = merged_dataset, file = "final-tidy-data.txt", quote = F)