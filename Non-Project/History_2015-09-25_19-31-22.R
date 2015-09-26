library(xlsx)
xlconnect
library(xlsx)
install.packages("rJava")
library(xlsx)
install.packages("xlsx")
library(xlsx)
install.packages(c("boot", "class", "cluster", "codetools", "crayon", "curl", "devtools", "dplyr", "evaluate", "foreign", "git2r", "jsonlite", "knitr", "lattice", "MASS", "Matrix", "mgcv", "mime", "nlme", "nnet", "R6", "Rcpp", "rpart", "rversions", "scales", "spatial", "survival", "tidyr", "xml2"))
library(xlsx)
install.packages("java")
install.packages("Java")
library(xlsx)
dateDownloaded
install.packages("data.table")
list.files("data")
library(data.table)
install.packages("swirl")
library(swirl)
swirl()
1:20
pi:10
15:1
?`:`
seq(1,20)
seq(0,10,by=0.5)
seq(5,10,length=30)
my_seq<-seq(5,10,length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0,times = 40)
rep(c(0,1,2),times = 10)
rep(c(0,1,2),each=10)
c(0.5,55,-10,6)
num_vect<-c(0.5,55,-10,6)
tf<-numvect<1
tf<-num_vect<1
?tf
tf
num_vect >= 6
my_char <- c("My","name","is")
my_char
paste(my_char,collapse = " ")
my_name <- c(my_char,"David")
my_name
paste(my_name,sep=" ")
paste(my_name,collapse = " ")
paste("Hello","world!",sep=" ")
paste(1:3,c("X","Y","Z"),sep="")
paste(LETTERS,1:4,sep= "-")
install_from_swirl("Getting and Cleaning Data")
setwd("C:/Downloads/Coursera/getdata-032")
swirl*()
swirl()
library(dplyr)
cran <- tbl_df(mydf)
rm mydf
rm(mydf)
rm("mydf")
cran
?group_bb
?group_by
by_package <- group_by(cran,package)
by_package
sumarize(by_package,mean(size))
summarize(by_package,mean(size))
submit()
pack_sum
quantile(pack_sum$count,probs=0.99)
top_counts <- filter(pack_sum,count>679)
top_counts
View(top_counts)
top_counts_sorted <- arrange(top_counts,desc(count))
View(top_counts_sorted)
quantile(pack_sum$unique,probs=0.99)
top_unique <- filter(pack_sum,unique>465)
View(top_unique)
top_unique_sorted <- arrange(top_unique,desc(unique))
View(top_unique_sorted)
submit()
submit()
submit()
View(result3)
submit()
submit()
submit()
submit()
library(tidyr)
students
?gather
View(students)
gather(students,sex,count,-grade)
students2
res <- gather(students2,sex_class,count,-grade)
res
?separate
separate(res,sex_class,c("sex","class"))
submit()
submit()
students3
submit()
submit()
submit()
?spead
?spread
View(students3)
View(students3)
submit()
submit()
submit()
extract_numeric("class5")
submit()
submit()
submit()
submit()
reset()
submit()
students4
submit()
submit()
submit()
passed
failed
passed <- mutate(passed,status,"passed")
passed <- mutate(passed,"status","passed")
passed <- mutate(passed,status = "passed")
failed <= mutate(failed,status = "failed")
failed <- mutate(failed,status = "failed")
packageVersion(dplyr)
packageVersion('dplyr')
bind_rows(passed,failed)
View(sat)
sat
submit()
submit()
submit()
submit()
Sys.getlocale("LC_TIME")
library(lubridate)
help(package="lubridate")
help(package=lubridate)
today()
this_day <- today()
this_day
year(this_day)
wday(this_day)
wday(this_day,label=TRUE)
this_moment <- now()
this_moment
minute(this_moment)
my_date <- ymd("1989-05-17")
my_date
class(my_date)
ymd("1989 May 17")
mdy("March 12, 1975")
dmy(25081985)
ymd(192012)
ymd("192012")
ymd("1920112")
ymd("1920/1/2")
dt1
ymd_hms(dt1)
hms("03:22:14")
dt2
ymd(dt2)
update(this_moment,hours=8,minutes=34,seconds=55)
this_moment
this_moment <- update(this_moment,hours=8,minutes=34,seconds=55)
this_moment
nyc <- now("America/New_York")
nyc
depart <- nyc+days(2)
depart
depart <- update(depart,hours+17,minutes+34)
depart <- update(depart,hours=17,minutes=34)
depart
arrive <- depart+hours(15)+minutes(50)
with_tz(arrive)
arrive
?with_tz
with_tz(arrive,"Asia/Hong_Kong")
arrive <- with_tz(arrive,"Asia/Hong_Kong")
arrive
last_time <- mdy("June 17, 2008")
last_time <- mdy("June 17, 2008", tz="Singapore")
last_time
?new_interval
how_long <- new_interval(last_time,arrive)
as.period(how_long)
stopwatch()
getwd()
setwd("C:/Downloads/Coursera/getdata-032/CourseProject")
subject_train <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")
View(subject_train)
X_train <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
View(X_train)
y_train <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/train/y_train.txt", quote="\"", comment.char="")
View(y_train)
summary(y_train)
summary(subject_train)
?atach
?attach
sub_actvty <- subject_train[]+"_"+y_train[]
sub_actvty <- subject_train[1]+"_"+y_train[1]
sub_actvty <- subject_train+"_"+y_train
sub_actvty <- cbind(subject_train,y_train)
View(sub_actvty)
sub_actvty <- cbind(subject = subject_train, activity = y_train)
View(sub_actvty)
View(sub_actvty)
rm sub_activity
rm(sub_activity)
rm(sub_actvty)
sub_actvty <- cbind(subject = subject_train, activity = y_train)
View(sub_actvty)
sub_actvty <- setNames(sub_actvty,c("subject","activity"))
sub_actvty <- setNames(sub_actvty,c("subject","activity"))
sub_actvty <- mutate(sub_actvty,id=c("subject","_","activity"))
sub_actvty <- mutate(sub_actvty,subject+_+activity)
sub_actvty <- mutate(sub_actvty,subject+"_"+activity)
sub_actvty <- mutate(sub_actvty,to.char(subject)+"_"+activity)
sub_actvty <- mutate(sub_actvty,as.char(subject)+"_"+activity)
sub_actvty <- mutate(sub_actvty,as_char(subject)+"_"+activity)
sub_actvty <- mutate(sub_actvty,as_string(subject)+"_"+activity)
sub_actvty <- mutate(sub_actvty,as_character(subject)+"_"+as_character(activity))
sub_actvty <- mutate(sub_actvty,as.character(subject)+"_"+as.character(activity))
sub_actvty <- mutate(sub_actvty,c(sub_actvty$subject,"_",sub_actvty$activity)
)
sub_actvty <- mutate(sub_actvty,ID = c(sub_actvty$subject,"_",sub_actvty$activity))
sub_actvty <- mutate(sub_actvty,ID = rbind(sub_actvty$subject,"_",sub_actvty$activity))
sub_actvty <- mutate(sub_actvty,ID = cbind(sub_actvty$subject,"_",sub_actvty$activity))
sub_actvty2 <- mutate(sub_actvty,ID = cbind(sub_actvty$subject,"_",sub_actvty$activity))
cbind(sub_actvty$subject,"_",sub_actvty$activity)
rbind(sub_actvty$subject,"_",sub_actvty$activity)
sub_actvty <- mutate(sub_actvty,c(sub_actvty$subject,"_",sub_actvty$activity)
;
)
c(sub_actvty$subject,"_",sub_actvty$activity)
as.dataframe(c(sub_actvty$subject,"_",sub_actvty$activity))
as.datatable(c(sub_actvty$subject,"_",sub_actvty$activity))
sub_actvty$subject
as.character(sub_actvty$subject)
sub_actvty2 <- mutate(sub_actvty,ID = paste0(sub_actvty$subject,"_",sub_actvty$activity))
View(sub_actvty2)
sub_actvty2 <- mutate(sub_actvty,ID = paste0(1:length(sub_activity),sub_actvty$subject,"_",sub_actvty$activity))
sub_actvty2 <- mutate(sub_actvty,ID = paste0(1:length(sub_actvty),sub_actvty$subject,"_",sub_actvty$activity))
View(sub_actvty2)
length(sub_actvty2)
rows(sub_actvty2)
rownumber(sub_actvty2)
row_number(sub_actvty2)
sub_actvty2.rows
rows.sub_actvty2
index(sub_actvty)
count(sub_actvty)
rownum  <- 1:count(sub)
rows <- count(sub)
rownum  <- 1:count(sub_actvty2)
rownum  <- 1:count(sub_actvty)
rownum  <- count(sub_actvty)
rows <- 1:rownum
rows <- 1:rownum[1]
rows <- 1:7352
numbers()
NUMBERS(2)
sub_actvty::numrow
sub_actvty$numrow
dims(sub_actvty)
nrow(sub_actvty)
cound <- 1:nrow(sub_actvty)
View(rownum)
rownum  <- nrows(sub_actvty)
rownum  <- nrow(sub_actvty)
count <- 1:rownum
count1 <- 1:(nrow(sub_actvty))
savehistory("C:/Downloads/Coursera/getdata-032/CourseProject/History_2015_09_25_331.txt")
date
date(now)
now()
now(date())
date(now())
ymd(now())
ymd(date())
date
date()
date(ymd)
?date
format(Sys.time(), "%a %b %d %H:%M:%S %Y")
format(Sys.time(), "%Y%m%d_%H-%M-%S")
format(Sys.time(), "%Y-%m-%d_%H-%M-%S")
histfilename <- paste0("History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"))
path <- "C:/Downloads/Coursera/getdata-032/CourseProject"
rc <- setwd(path)
histfilename <- paste0(path,"/History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"))
savehistory(histfilename)
path <- "C:/Downloads/Coursera/getdata-032/CourseProject"
rc <- setwd(path)
histfilename <- paste0(path,"/History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".txt")
savehistory(histfilename)
path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".txt")
savehistory(histfilename)
path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")
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
## Get rownumbers for a dataset without an ID
rownumbers <- 1:(nrow(sub_actvty))
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")
packages.install("data.table")
packages.install("sqldf")
package.install("sqldf")
packages_install("sqldf")
install.packages("sqldf")
install.packages("data.table")
library(sqldf)
library(data.table)
sub_actvty <- cbind(subject = subject_train, activity = y_train)
View(sub_actvty)
sub_actvty <- setNames(sub_actvty,c("subject","activity"))
View(sub_actvty)
rownumbers(sub_actvty)
sub_actvty$nrows
sub_actvty$nrow
sub_actvty$rownumbers
row_number(sub_actvty)
row_number(1)
row_number(2)
x <- c(5, 1, 3, 2, 2, NA)
row_number(x)
min_rank(x)
dense_rank(x)
percent_rank(x)
cume_dist(x)
rownumbers <- 1:(nrow(x_train))
sub_actvty <- cbind(rownum = rownumbers,subject = subject_train, activity = y_train)
sub_actvty <- setNames(sub_actvty,c("rownum","subject","activity"))
rownumbers <- 1:(nrow(X_train))
sub_actvty <- cbind(rownum = rownumbers,subject = subject_train, activity = y_train)
sub_actvty <- setNames(sub_actvty,c("rownum","subject","activity"))
View(sub_actvty)
View(X_train)
sub_act_data <- cbind(sub_actvty,X_train)
View(sub_act_data)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
rownumbers <- paste0("T_",1:(nrow(X_train)))
sub_actvty %>% setNames(c("rownum","subject","activity"))
View(sub_act_data)
View(sub_actvty)
rownumbers <- paste0("T_",1:(nrow(X_train)))
sub_actvty <- cbind(ID = rownumbers,subject = subject_train,
activity = y_train)
sub_actvty <- setNames(sub_actvty,c("rownum","subject","activity"))
sub_act_data <- cbind(sub_actvty,X_train)
sub_act_data <- setNames(sub_act_data,c("rownum","subject","activity"))
View(sub_actvty)
View(sub_act_data)
View(X_train)
colnums <- paste0("F_",1:ncol(xtrain))
colnums <- paste0("F_",1:ncol(x_train))
colnums <- paste0("F_",1:ncols(x_train))
colnums <- paste0("F_",1:ncol(x_train))
colnums <- paste0("F_",1:ncol(X_train))
sub_actvty <- setNames(sub_actvty,c("rownum","subject","activity",colnums))
colnames1 <- c("rownum","subject","activity")
colnames <- c(colnames1,colnums)
rm(sub_actvty)
rm(sub_actvty)
x_train
rm(x_train)
rm(X_train)
rm(y_train)
rm(subject_train)
View(sub_act_data)
sub_act_data <- setNames(sub_act_data,colnames)
View(sub_act_data)
X_test <- read.table("UCI_HAR_Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("UCI_HAR_Dataset/test/y_test.txt", quote="\"", comment.char="")
subject_test <- read.table("UCI_HAR_Dataset/test/subject_test.txt", quote="\"", comment.char="")
rownumbers_test <- paste0("Train_",1:(nrow(X_test)))
rownumbers_train <- paste0("Train_",1:(nrow(X_train)))
rownumbers_test <- paste0("Test_",1:(nrow(X_test)))
rm(rownumbers)
## Read in tables from Training
X_train <- read.table("UCI_HAR_Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("UCI_HAR_Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI_HAR_Dataset/train/subject_train.txt", quote="\"", comment.char="")
rownumbers_train <- paste0("Train_",1:(nrow(X_train)))
rownumbers_test <- paste0("Test_",1:(nrow(X_test)))
colnums_train <- paste0("F_",1:ncol(X_train))
colnums_test <- paste0("F_",1:ncol(X_test))
sub_actvty_train <- cbind(ID = rownumbers,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers,subject = subject_test,activity = y_test)
sub_actvty_train <- cbind(ID = rownumbers_train,subject = subject_train,activity = y_train)
sub_actvty_test <- cbind(ID = rownumbers_test,subject = subject_test,activity = y_test)
sub_act_data <- cbind(sub_actvty_train,X_train)
sub_act_data_test <- cbind(sub_actvty_test,X_test)
colnames1 <- c("rownum","subject","activity")
colnames_train  <- c(colnames1,colnums_train)
colnames_test   <- c(colnames1,colnums_test)
sub_act_data            <- setNames(sub_act_data,colnames_train)
sub_act_data_test       <- setNames(sub_act_data_test,colnames_test)
View(sub_act_data_test)
train_test <- merge(sub_act_date,sub_act_data_test)
train_test <- rbind_all(sub_act_data,sub_act_data_test)
train_test <- rbind(sub_act_data,sub_act_data_test)
View(train_test)
tail(train_test)
tbl_df(train_test)
all <- tbl_df(train_test)
all
summary (all)
str(all)
features <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/features.txt", quote="\"", comment.char="")
View(features)
activity_labels <- read.table("C:/Downloads/Coursera/getdata-032/CourseProject/UCI_HAR_Dataset/activity_labels.txt", quote="\"", comment.char="")
View(activity_labels)
features[,2]
features[,2]
## filename: run_analysis.R
## by David DuPre for course getdata-032
## Sept 25, 2015
path <- "C:/Downloads/Coursera/getdata-032/CourseProject/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
