activity_labels <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/activity_labels.txt", quote="\"", comment.char="")
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
feature_cols <- features[,2]
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data            <- cbind(sub_actvty_train,X_train)
sub_act_data_test       <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
rm(sub_actvty)
rm(X_train)
rm(y_train)
rm(subject_train)
## Build first 3 column names
colnames1 <- c("rownum","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
View(features)
feature_cols
class(feature_cols)
feature_cols <- as.vector(features[,2])
class(feature_cols)
feature_cols
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <-  rep("Test",nrow(X_test))
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
rownumbers_train <- rep("Train", nrow(X_train))
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
rownumbers_train <- rep("Train", nrow(X_train))
feature_cols <- as.vector(features[,2])
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data            <- cbind(sub_actvty_train,X_train)
sub_act_data_test       <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
View(train_test)
rm(train_test)
View(sub_act_data)
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
## Read in features
features <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/features.txt", quote="\"", comment.char="")
## Read in Activities
activity_labels <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/activity_labels.txt", quote="\"", comment.char="")
## Read in tables from Training
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")
## Read in tables from Test
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("UCI_HAR_Dataset/test/subject_test.txt", quote="\"", comment.char="")
## Create rownumbers for Train and Test
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <-  rep("Test",nrow(X_test))
## Create Feature numbers for Train and Learn
feature_cols <- as.vector(features[,2])
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data            <- cbind(sub_actvty_train,X_train)
sub_act_data_test       <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
summary(train_test)
head(train_test)
head(train_test,1)
activity_labels <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/activity_labels.txt", quote="\"", comment.char="")
View(activity_labels)
head(train_test[,train_test$activity=5],1)
train_test[,train_test$activity=5]
head(train_test[,train_test$activity==5],1)
head(train_test[train_test$activity==5],1)
t5<- train_test[train_test$activity==5]
t5<- train_test[,train_test$activity==5]
names(train_test)
train_test[1,train_test$activity=5]
train_test[1,5]
train_test[1,]
train_test[1,train_test$activity=5]
train_test[3,5]
train_test[3,"activity"]
train_test[3,activity==5]
train_test[,activity==5]
train_test[,"activity"==5]
train_test[,"activity"==L5]
train_test[,"activity"==I5]
train_test[,"activity"=="5"]
train_test[,activity>5]
train_test[,activity>5]
library(plyr)
revalue(train_test$activity,c(1="WALKING",5="STANDING"))
revalue(train_test$activity,c("1"="WALKING","5"="STANDING"))
revalue(train_test$activity,c("1"="WALKING","5"="STANDING"))
asvec <- as.vector(train_test$activity)
revalue(asvec,c("1"="WALKING","5"="STANDING"))
revalue(asvec,c(1="WALKING",5="STANDING"))
tapply(train_test,3,toString())
tapply(train_test,3,toString
)
tapply(train_test,3,function(x) toString(x))
num2char <- function(x){toString(x)}
tapply(train_test,3,num2char)
tapply(train_test,2,num2char)
tapply(train_test,,num2char)
tapply(train_test$activity,,num2char)
tapply(train_test,activity,num2char)
tapply(train_test,"activity",num2char)
View(train_test)
class(train_test$activity)
train_test$activity <- as.character(train_test$activity)
class(train_test$activity)
train_test[,train_test$activity=5]
train_test[,train_test$activity==5]
train_test[,train_test$activity="5"]
revalue(asvec,c("1"="WALKING","5"="STANDING"))
revalue(train_test$activity,c("1"="WALKING","5"="STANDING"))
revalue(train_test$activity,c("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING"))
sd_mean <- train_test[,c("mean")]
sd_mean <- train_test[c("mean")]
sd_mean <- tapply(train_test,"mean"]
sd_mean <- tapply(train_test,train_test[,"mean"]]
sd_mean <- tapply(train_test,train_test[,"mean"]
)
sd_mean <- select(train_test,ends_with(mean))
sd_mean <- select(train_test,ends_with("mean"))
sd_mean <- group_by(train_test,session,subject,activity)
View(sd_mean)
sd_mean <- select(train_test,contains("mean"))
gsub(",","_",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub("(,","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub(")","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub("(","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub(")","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub("\)","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub("\\)","-",feature_cols,ignore.case=TRUE,fixed=TRUE)
gsub(")","-",feature_cols,ignore.case = TRUE,fixed = TRUE)
gsub("(","-",feature_cols,ignore.case = TRUE,fixed = TRUE)
gsub("(","-",feature_cols,fixed = TRUE)
gsub(")","-",feature_cols,fixed = TRUE)
feature_cols <- as.vector(features[,2])
feature_cols <- gsub(",","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("(","-",feature_cols,fixed = TRUE)
feature_cols <- gsub(")","-",feature_cols,fixed = TRUE)
sub_actvty_train <-
cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <-
cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
sub_act_data            <- cbind(sub_actvty_train,X_train)
sub_act_data_test       <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
train_test$activity <- as.character(train_test$activity)
revalue(
train_test$activity,c(
"1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING"
)
)
path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <-
paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
sd_mean <- select(train_test,contains("mean"))
View(sd_mean)
## Create rownumbers for Train and Test
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <- rep("Test",nrow(X_test))
## Create Feature numbers for Train and Learn
feature_cols <- as.vector(features[,2])
feature_cols <- gsub(",","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("(","_",feature_cols,fixed = TRUE)
feature_cols <- gsub(")","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("-","_",feature_cols,fixed = TRUE)
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train <- c(colnames1,feature_cols)
colnames_test <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data <- setNames(sub_act_data,colnames_train)
sub_act_data_test <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
train_test$activity <- as.character(train_test$activity)
revalue( train_test$activity,c( "1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING"
)
)
sd_mean <- select(train_test,contains("mean"))
train_test <- data[,!duplicated(colnames(train_test))]
train_test <- train_test[,!duplicated(colnames(train_test))]
sd_mean <- select(train_test,contains("mean"))
View(sd_mean)
view(feature_cols)
feature_cols
sd_mean <- select(train_test,contains("mean")|contains("std"))
sd_mean <- select(train_test,contains("mean","std"))
sd_mean <- select(train_test,contains("mean"|"std"))
sd_mean <- select(train_test,contains("mean"))
sd_std <- select(train_test,contains("std"))
sd <- merge(sd_mean,sd_std)
sd <- merge.data.frame(sd_mean,sd_std,by intersect(names(session,subject,activity),names(session,subject,activity)))
sd <- merge.data.frame(sd_mean,sd_std,by=intersect(names(session,subject,activity),names(session,subject,activity)))
sd <- merge.data.frame(sd_mean,sd_std,by=intersect(names("session","subject","activity"),names("session","subject","activity")))
sd <- merge.data.frame(sd_mean,sd_std,by=intersect(names(sd_mean),names(sd_std)))
sd <- cbind(sd_mean,sd_std)
View(sd)
sd_first3 <- select(train_test,colnames1)
sd_first3 <- select(train_test,one_of(colnames1))
sd <- cbind(sd_first3,sd_mean,sd_std)
View(sd)
summary(sd)
## Create rownumbers for Train and Test
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <- rep("Test",nrow(X_test))
## Create Feature numbers for Train and Learn
feature_cols <- as.vector(features[,2])
feature_cols <- gsub(",","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("(","_",feature_cols,fixed = TRUE)
feature_cols <- gsub(")","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("-","_",feature_cols,fixed = TRUE)
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train <- c(colnames1,feature_cols)
colnames_test <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data <- setNames(sub_act_data,colnames_train)
sub_act_data_test <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
train_test$activity <- as.character(train_test$activity)
revalue( train_test$activity,c( "1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING"
)
)
train_test <- train_test[,!duplicated(colnames(train_test))]
sd_first3 <- select(train_test,one_of(colnames1))
sd_mean <- select(train_test,contains("mean"))
sd_std <- select(train_test,contains("std"))
sd <- cbind(sd_first3,sd_mean,sd_std)
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
## Read in features
features <- read.table("UCI_HAR_Dataset/features.txt", quote = "\"", comment.char = "")
## Read in Activities
activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", quote = "\"", comment.char = "")
## Read in tables from Training
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote = "\"", comment.char = "")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote = "\"", comment.char = "")
subject_train <-read.table( "UCI_HAR_Dataset/train/subject_train.txt", quote = "\"", comment.char = "" )
## Read in tables from Test
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote = "\"", comment.char = "")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote = "\"", comment.char = "")
subject_test <-  read.table( "UCI_HAR_Dataset/test/subject_test.txt", quote = "\"", comment.char = "")
## Create rownumbers for Train and Test
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <- rep("Test",nrow(X_test))
## Create Feature numbers for Train and Learn
feature_cols <- as.vector(features[,2])
feature_cols <- gsub(",","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("(","_",feature_cols,fixed = TRUE)
feature_cols <- gsub(")","_",feature_cols,fixed = TRUE)
feature_cols <- gsub("-","_",feature_cols,fixed = TRUE)
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train <- c(colnames1,feature_cols)
colnames_test <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data <- setNames(sub_act_data,colnames_train)
sub_act_data_test <- setNames(sub_act_data_test,colnames_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
train_test$activity <- as.character(train_test$activity)
revalue( train_test$activity,c( "1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING"
)
)
train_test <- train_test[,!duplicated(colnames(train_test))]
sd_first3 <- select(train_test,one_of(colnames1))
sd_mean <- select(train_test,contains("mean"))
sd_std <- select(train_test,contains("std"))
sd <- cbind(sd_first3,sd_mean,sd_std)
train_test$activity <- revalue( train_test$activity,c( "1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING"
)
)
View(train_test)
write.csv(sd,file="TIDY_UCI_HAR_Datase.csv")
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
###### READ IN TABLES
## Read in features table
features <- read.table("UCI_HAR_Dataset/features.txt", quote = "\"", comment.char = "")
## Read in Activities table
activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", quote = "\"", comment.char = "")
## Read in tables from Training
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote = "\"", comment.char = "")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote = "\"", comment.char = "")
subject_train <-read.table( "UCI_HAR_Dataset/train/subject_train.txt", quote = "\"", comment.char = "" )
## Read in tables from Test
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote = "\"", comment.char = "")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote = "\"", comment.char = "")
subject_test <-  read.table( "UCI_HAR_Dataset/test/subject_test.txt", quote = "\"", comment.char = "")
#### Building ROWnumbers and Column Names
## Create rownumbers for Train and Test
rownumbers_train <- rep("Train", nrow(X_train))
rownumbers_test <- rep("Test",nrow(X_test))
## Create Feature numbers for Train and Learn
feature_cols <- as.vector(features[,2])
##feature_cols <- gsub(",","_",feature_cols,fixed = TRUE)
##feature_cols <- gsub("(","_",feature_cols,fixed = TRUE)
##feature_cols <- gsub(")","_",feature_cols,fixed = TRUE)
##feature_cols <- gsub("-","_",feature_cols,fixed = TRUE)
##colnums_test <- paste0("F_",1:ncol(X_test))
## Join rownumbers, subject and Activity into one table
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
## Join Feature measurments ID,Subject,Activity
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
## release storage for unneeded tables
## rm(sub_actvty)
## rm(X_train)
## rm(y_train)
## rm(subject_train)
## Build first 3 column names
colnames1 <- c("session","subject","activity")
## Join the 3 plus 561 column names
colnames_train  <- c(colnames1,feature_cols)
colnames_test   <- c(colnames1,feature_cols)
## Set column names for all 564 columns
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
## Build new DF with TRAIN and TEST data
train_test <- rbind(sub_act_data,sub_act_data_test)
## Convert the Activity which is INT to CHAR for next step
train_test$activity <- as.character(train_test$activity)
## Replace the Integers with the Character values defined in Actitity_LABELS
train_test$activity <- revalue( train_test$activity,c(
"1" = "WALKING","2" = "WALKING_UPSTAIRS",
"3" = "WALKING_DOWNSTAIRS","4" = "SITTING",
"5" = "STANDING","6" = "LAYING" ))
## Remove duplicate collumns
train_test <- train_test[,!duplicated(colnames(train_test))]
## Save first 3 columns (Session,subject,activity)
sd_first3 <- select(train_test,one_of(colnames1))
## Save Columns with MEAN values
sd_mean <- select(train_test,contains("mean"))
## SAVE columns with STD standard deviations
sd_std <- select(train_test,contains("std"))
## Build new Data Frame with only the MEAN and STD measurements.
sd <- cbind(sd_first3,sd_mean,sd_std)
## Write out the Tidy data file in CSV format.
write.csv(sd,file="TIDY_UCI_HAR_Datase.csv")
View(sd)
View(sub_actvty_train)
TidyFilename <- paste0(path,"TIDY_UCI_HAR_Datase","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
write.csv(sd,file=TidyFilename)
## filename: run_analysis.R
## by David DuPre for course getdata-032
## Sept 25, 2015
path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
