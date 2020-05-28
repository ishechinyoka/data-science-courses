# Code Book

## Introduction

This is the codebook for the final-tidy-data which can be found in this repo. It helps one understand the variables in that file, which is produced by the run_analysis.R script. You can simply run it in any folder, and it will output the final-tidy-data.txt along with the subdirectory of the raw data.

There are two kinds of variables in this file: 

- ID variables: Variables that identify subjects and activities (Number: 2)
- Measurement variables: Variables that summarize the mean and standard deviations of various measurements for all the subjects (number: 66).
- Total: 68 variables (68 columns).

## Variables in the Tidy-data 

### ID Variables

Variable Name | Description
---------- | --------
**SubjectNumber** | ID code of subject performing measured activity, ranged from 1 to 30
activity | Activity performed during measurement, one of "walking", "walking_upstairs", "walking downstairs", "sitting", "standing" and "laying". Based on manual labeling of video recordings of the experiments.

### Measurement variables

The original data was captured by the subject wearing a Samsung Galaxy S II - smartphone while performing various assigned activities. Linear acceleration (accelerometer) and angular velocity (gyroscope) were captured in the X, Y and Z axises/planes. 

The table below shows all the measurement variables. The units used to capture those variables are not known. 

Variable name | Description
------ | -------
tBodyAcc-mean-X | Mean of body acceleration measured on x-axis
tBodyAcc-mean-Y | Mean of body acceleration measured on Y-axis.
tBodyAcc-mean-Z | Mean of body acceleration on Z axis.
tBodyAcc-std-X | Standard deviation of body acceleration measured on x-axis
tBodyAcc-std-Y | Standard deviation of body acceleration measured on y-axis
tBodyAcc-std-Z | Standard deviation for body acceleration for Z
tGravityAcc-mean-X | Mean of gravity acceleration measured on x-axis
tGravityAcc-mean-Y | Mean of gravity acceleration measured on y-axis
tGravityAcc-mean-Z | Mean of gravity acceleration measured on z-axis
tGravityAcc-std-X | Standard deviation of gravity acceleration measured on x-axis
tGravityAcc-std-Y | Standard deviation of gravity acceleration measured on y-axis
tGravityAcc-std-Z | Standard deviation of gravity acceleration measured on z-axis
tBodyAccJerk-mean-X | Mean of jerk-signal (derived by time) for body acceleration measured on x-axis
tBodyAccJerk-mean-Y | Mean of jerk-signal (derived by time) for body acceleration measured on y-axis
tBodyAccJerk-mean-Z | Mean of jerk-signal (derived by time) for body acceleration measured on z-axis
tBodyAccJerk-std-X | Standard deviation of jerk-signal (derived by time) for body acceleration measured on x-axis
tBodyAccJerk-std-Y | Standard deviation of jerk-signal (derived by time) for body acceleration measured on y-axis
tBodyAccJerk-std-Z | Standard deviation of jerk-signal (derived by time) for body acceleration measured on z-axis
tBodyGyro-mean-X | Mean of body angular velocity measured  in x-plane
tBodyGyro-mean-Y | Mean of body angular velocity measured in y-plane
tBodyGyro-mean-Z | Mean of body angular velocity measured in z-plane
tBodyGyro-std-X | Standard deviation of body angular velocity measured in x-plane
tBodyGyro-std-Y | Standard deviation of body angular velocity measured in y-plane
tBodyGyro-std-Z | Standard deviation of body angular velocity measured in z-plane
tBodyGyroJerk-mean-X | Mean of jerk-signal (derived by time) for body angular velocity measured in x-plane
tBodyGyroJerk-mean-Y | Mean of jerk-signal (derived by time) for body angular velocity measured in y-plane
tBodyGyroJerk-mean-Z | Mean of jerk-signal (derived by time) for body angular velocity measured in z-plane
tBodyGyroJerk-std-X | Standard deviation of jerk-signal (derived by time) for body angular velocity measured in x-plane
tBodyGyroJerk-std-Y | Standard deviation of jerk-signal (derived by time) for body angular velocity measured in y-plane
tBodyGyroJerk-std-Z | Standard deviation of jerk-signal (derived by time) for body angular velocity measured in z-plane
tBodyAccMag-mean | Mean of magnitude of body acceleration
tBodyAccMag-std | Standard deviation of magnitude of body acceleration
tGravityAccMag-mean | Mean of magnitude of gravity acceleration
tGravityAccMag-std | Standard deviation of magnitude of gravity acceleration
tBodyAccJerkMag-mean | Mean of magnitude of jerk signal (derived by time) for body acceleration
tBodyAccJerkMag-std | Standard deviation of magnitude of jerk signal (derived by time) for body acceleration
tBodyGyroMag-mean | Mean of magnitude for body angular velocity
tBodyGyroMag-std | Standard deviation of magnitude of for body angular velocity
tBodyGyroJerkMag-mean | Mean of magnitude of jerk signal (derived by time) for body angular velocity
tBodyGyroJerkMag-std | Standard deviation of magnitude of jerk signal (derived by time) for body
fBodyAcc-mean-X | Fourier-transformed mean of body acceleration measured on x-axis
fBodyAcc-mean-Y | Fourier-transformed mean of body acceleration measured on y-axis
fBodyAcc-mean-Z | Fourier-transformed mean of body acceleration measured on z-axis
fBodyAcc-std-X | Fourier-transformed standard deviation of body acceleration measured on x-axis
fBodyAcc-std-Y | Fourier-transformed standard deviation of body acceleration measured on y-axis
fBodyAcc-std-Z | Fourier-transformed standard deviation of body acceleration measured on z-axis
fBodyAccJerk-mean-X | Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on x-axis
fBodyAccJerk-mean-Y | Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on Y axis
fBodyAccJerk-mean-Z | Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on z-axis
fBodyAccJerk-std-X | Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on x-axis
fBodyAccJerk-std-Y | Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on y-axis
fBodyAccJerk-std-Z | Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on z-axis
fBodyGyro-mean-X | Fourier-transformed mean of body angular velocity measured in x-plane
fBodyGyro-mean-Y | Fourier-transformed mean of body angular velocity measured in y-plane
fBodyGyro-mean-Z | Fourier-transformed mean of body angular velocity measured in z-plane
fBodyGyro-std-X | Fourier-transformed standard deviation of body angular velocity measured in x-plane
fBodyGyro-std-Y | Fourier-transformed standard deviation of body angular velocity measured in y-plane
fBodyGyro-std-Z | Fourier-transformed standard deviation of body angular velocity measured in z-plane
fBodyAccMag-mean | Fourier-transformed mean of magnitude of body acceleration
fBodyAccMag-std | Fourier-transformed standard deviation of magnitude of body acceleration
fBodyBodyAccJerkMag-mean | Fourier-transformed mean of magnitude of jerk signal (derived by time) for body acceleration
fBodyBodyAccJerkMag-std | Fourier-transformed standard deviation of magnitude of jerk signal (derived by time) for body acceleration
fBodyBodyGyroMag-mean | Fourier-transformed mean of magnitude of body angular velocity
fBodyBodyGyroMag-std | Fourier-transformed standard deviation of magnitude of body angular velocity
fBodyBodyGyroJerkMag-mean | Fourier-transformed mean of magnitude of jerk signal (derived by time) for body angular velocity
fBodyBodyGyroJerkMag-std | Fourier-transformed standard deviation of magnitude of jerk signal (derived by time) for body angular velocity


## Conclusion

So you may wonder: **How do I confirm the dimensions of the final dataset?**  Simply load this in R:

dt <- read.table("final-tidy-data.txt")
Then do:

~~~
dim(dt)
~~~

And you will get the result that the data frame has 1 row and 68 columns.

Since the R script does an aggregation calculation across all the subjects, it therefore follows that:

- The first two columns which contain identification variables (**SubjectNumber** and **Activity**) are empty. This is because they are categorical and cannot be computed for their mean or standard deviation summaries.
- Data will only be in columns 3-68, which are measurable variables (quantitative) whose values can be expressed as mean or standard deviations. and
- There is only one row (observation) as this is an aggregate of all the 30 participants in the initial experiment.

