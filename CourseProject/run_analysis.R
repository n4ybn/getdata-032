## filename: run_analysis.R 
## by David DuPre for course getdata-032
## Sept 25, 2015

path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)

library(data.table)
library(sqldf)
library(dplyr)
library(tidyr)


## Read in tables from Training
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")

## Read in tables from Test
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("UCI_HAR_Dataset/test/subject_test.txt", quote="\"", comment.char="")



## Create rownumbers for Train and Test
rownumbers_train <- paste0("Train_",1:(nrow(X_train)))
rownumbers_test <- paste0("Test_",1:(nrow(X_test)))

## Create Feature numbers for Train and Learn
colnums_train <- paste0("F_",1:ncol(X_train))
colnums_test <- paste0("F_",1:ncol(X_test))

## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train) 
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test) 

## Join Feature measurments ID,Subject,Activity
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)

## release storage for unneeded tables
rm(sub_actvty)
rm(X_train)
rm(y_train)
rm(subject_train)


## Build first 3 column names
colnames1 <- c("rownum","subject","activity")

## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,colnums_train)
colnames_test   <- c(colnames1,colnums_test)

## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)



