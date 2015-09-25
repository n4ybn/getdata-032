library(httr)
library(httpuv)
library(jsonlite)
oauth_endpoints("github")
oauth_endpoints("github")

myapp <- oauth_app("github",key="27dfae0a566138c206b6", secret = "8975c0f6a26bf59985c571672bb9778ed86c4b89")
github_token <- oauth2.0_token(oauth_endpoints("github"),myapp)
gtoken <-config(token = github_token)

req <- GET("https://api.github.com/rate_limit",gtoken)


stop_for_status(req)

jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)

##-------------- QUESTION 2

library(data.table)
library(sqldf)
setwd("C:/downloads/Coursera/getdata-032")
if(!file.exists("data")){dir.create("data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

## Windows version of download
download.file(fileURL,destfile = "./data/UScommunities2006microdata.csv",method="wininet")

dateDownloaded <- date()
dateDownloaded

list.files("data")

acs <- fread("./data/UScommunities2006microdata.csv")
class(acs)

##---- Quest 3
library(sqldf)

q2 <- sqldf("select pwgtp1 from acs where AGEP < 50")
q2


##------------ Quest 4

##-- How many characters are in the 10th, 20th, 30th 
##    and 100th lines of HTML from this page: 
        
##--        http://biostat.jhsph.edu/~jleek/contact.html 

##--(Hint: the nchar() function in R may be helpful)

library(XML)
fileURL <- "http://biostat.jhsph.edu/~jleek/contact.html"

doc <- htmlTreeParse(fileURL,useInternalNodes = TRUE)
doc[,10]

library(RCurl)
library(XML)
theurl <- "http://biostat.jhsph.edu/~jleek/contact.html"
webpage <- getURL(theurl)
webpage <- readLines(tc <- textConnection(webpage)); close(tc)

nchar(webpage[c(10,20,30,100)])

## Question 5 ------------------
library(XML)
theurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
widths<- c(-1,9,-5,4,-1,3,-5,4,-1,3,-5,4,-1,3,-5,4,-1,3)
tables <- read.fwf(theurl,widths,header=FALSE,skip=4)
View(tables)
sum(tables[,4])






