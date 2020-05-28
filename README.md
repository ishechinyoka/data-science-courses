# The Getting and Cleaning Course Project

This Repo contains material on Getting and cleaning course project of the Coursera Johns Hopkins course.

This Readme file explains all the files in this repo, namely

- codebook.md
- run_analysis.R
- and this readme.md file

Below, I am going to explain how these files work.

## The Codebook


### Filename: codebook.md

### Purpose

To document the variables contained in the final-tidy-data text file.


### Description

The dataset contains results of activities of an experiment for wearable devices. The Galaxy Samsung S2 was used to measure the various attributes of the participants. 

The final dataset in this project will only capture the mean and standard deviations of the different measurements of the participants. 

Variables with the "mean" explain the averages while those with the "std" capture the standard deviations.

## The R Analysis Script

### Filename: run_analysis.R


### Purpose

To load raw data from the zip file here and extract measurements for the downstream analysis. To extract only the mean and std variables for each measurement.

### Description

1. Raw data was loaded from [this zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) using the download.file( R function.)
2. It was then extracted with the unzip() function and expanded into the UCI HAR Dataset subdirectory. The path is relative, which means wherever the script is run, this is where this subdirectory will be expanded to after extraction.
3. Using the data.table package, files with the activity names, and features were read.
4. Next, Two files containing data for the training and the testing groups, were loaded as well.
- A new dataset, called merged_dataset is created from the two datasets. The column names are taken from the files read in earlier.
- Afterwards, using the reshape package, we then cast the merged dataset into desired form.
- We are able to extract the mean and standard deviations from the dataset using the R regex function, grep() (for matching "mean" and "std" in column names). Also we then use the gsub() function to scan all columns for the () pairs and remove them. We replace them with empty strings "".
- Finally, the cleaned dataset is saved to "final-tidy-data.txt" using the data.table fwrite() function.   


## The Final Tidy Data

### Filename: final-tidy-data.txt


### Purpose

Contains the final dataset for analysis. It has human-readable variables.

### Description

This represents the final output of the R Script code. This has one variable per column as will be explained in the codebook.