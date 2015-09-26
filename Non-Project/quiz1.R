## Get DAta Quiz 1
## Q1
library(data.table)
setwd("C:/downloads/Coursera/getdata-032")
if(!file.exists("data")){dir.create("data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

## Windows version of download
download.file(fileURL,destfile = "./data/UScommunities2006microdata.csv",method="wininet")

dateDownloaded <- date()
dateDownloaded

list.files("data")

idaho2<- fread("./data/UScommunities2006microdata.csv")
class(idaho2)

## Q3
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"

## Windows version of download
download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx",mode='wb')

library(xlsx)
library(XLConnect)

dateDownloaded <- date()
dateDownloaded

list.files("data")
dat <- readWorksheetFromFile("./data/NatGasAquProg.xlsx",sheet=1,startRow=18,endCol=15)



dat <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,rowIndex=18:23,colIndex=7:15)
class(dat)


dat <- as.data.table(dat)
class(dat)
##install.packages("xlsx")
q3<-sum(dat$Zip*dat$Ext,na.rm=T)
q3

## ---------------- Question 4

##Balitmore Restaurants
fileurl4="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

download.file(fileurl4,destfile = "./data/restaurants.xml",mode='wb')

rest <- "./data/restaurants.xml"

## install.packages("xml",dependencies = TRUE)
library(XML)
doc1<-xmlParse(rest)
rootNode <- xmlRoot(doc1)
xmlName(rootNode)

zipcodes<-xpathSApply(rootNode,"//zipcode",xmlValue)

count = zipcodes[zipcodes=="21231"]
length(count)

## Q5 ----

fileURL5 = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"

DT <- fread(fileURL5)

system.time(rowMeans(DT)[DT$SEX==1];rowMeans(DT)[DT$SEX==2])

system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(mean(DT$pwgtp15,by=DT$SEX))

system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))




