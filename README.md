Getting and Cleaning Data Project
=========

This project takes data from different files and prepares a tidy data set thaT can be used later. The project also produces a secondary independent dataset.

The data used in the project represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
***
The project assumes that the data that the Samsung data is in your working directory and that both plyr and reshape packages are installed.
***
The repository contains one R script called **run_analysis.R**, a **CodeBook.md**, and **README.md**

The  R script called **run_analysis.R** does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the **mean** and **standard deviation** for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
***
Running the script produces two .txt files:

`UCIHarDataset_tidy.txt` where both training and testing datasets are merged presenting only the mean and standard deviation of variables that aren't derivative. This dataset has 10299 observations and 21 variables

`UCIHarDataset_averages.txt` that presents the average of each of the variables per subject and activity. This dataset has 180 observations and 21 variables

***
Author: MJMera
Date: 05/25/2014