---
title: "README.md"
author: "David DuPre"
date: "September 25, 2015"
output: html_document
---

Assignment for Course getdata-032

>The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.


Requirements:

You will be required to submit:  
1) a tidy data set as described below,  
2) a link to a Github repository with your script for performing the analysis,and  
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.   

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

## The script: run_analysis.R


## Load Libraries
library(data.table)  
library(sqldf)  
library(dplyr)  
library(tidyr)  

## READ IN TABLES

### Read in features table

>
features <- read.table("UCI_HAR_Dataset/features.txt", quote = "\"",comment.char = "")
>

### Read in Activities table
>
activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", quote = "\"", comment.char = "")
>

### Read in tables from Training 
>
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote = "\"", comment.char = "")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote = "\"", comment.char = "")
subject_train <-read.table( "UCI_HAR_Dataset/train/subject_train.txt", quote = "\"", comment.char = "" )
>

### Read in tables from Test 
>
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote = "\"", comment.char = "")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote = "\"", comment.char = "")
subject_test <-  read.table( "UCI_HAR_Dataset/test/subject_test.txt", quote = "\"", comment.char = "")
>


## Building ROWnumbers and Column Names

### Create rownumbers for Train and Test
>
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <- rep("Test",nrow(X_test))
>

### Create Feature numbers for Train and Learn
>
feature_cols <- as.vector(features[,2])
>

### Join rownumbers, subject and Activity into one table
>
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
>

### Join Feature measurments Subject,Activity
>
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
>

## SETUP COLUMN NAMES  
### Build first 3 column names
>
colnames1 <- c("session","subject","activity")
>
  
### SETUP COLUMN NAMES 
#### Join the 3 plus 561 column names
>
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
>

### Set column names for all 564 columns
>
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
>

## Combine the TRAINING and TEST data sets.
>
train_test <- rbind(sub_act_data,sub_act_data_test)
>

## Set the ACTIVITY Column to be descriptive
### Convert the Activity which is INT to CHAR for next step
>
train_test$activity <- as.character(train_test$activity)
>
### Replace the Integers with the Character values defined in Actitity_LABELS
>
train_test$activity <- revalue( train_test$activity,c( 
                                "1" = "WALKING","2" = "WALKING_UPSTAIRS",
                                "3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
                                "5" = "STANDING","6" = "LAYING" ))
>

## Limit the focus to just MEAN and STD measurements
### Remove duplicate collumns - This gets rid of many rows but not MEAN and STD
>
train_test <- train_test[,!duplicated(colnames(train_test))]
>

## Rebuild the DF 
### Save first 3 columns (Session,subject,activity)
>
sd_first3 <- select(train_test,one_of(colnames1))
>

### Save Columns with MEAN values
>
sd_mean <- select(train_test,contains("mean"))
>

### SAVE columns with STD standard deviations
>
sd_std <- select(train_test,contains("std"))
>

### Build new Data Frame with only the MEAN and STD measurements.
>
sd <- cbind(sd_first3,sd_mean,sd_std)                 

### Write out the Tidy data file in CSV format.
>
>TidyFilename <- paste0(path,"/TIDY_UCI_HAR_Datase","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".txt")  

>write.table(sd,file=TidyFilename,row.name=FALSE)
>

# The Filename it generates is: TIDY_UCI_HAR_Datase.txt
  


