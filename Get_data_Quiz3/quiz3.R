## Quiz3 worksheet
setwd("C:/downloads/Coursera/Get_data_Quiz3")

## Question 1
library(data.table)
library(sqldf)
library(dplyr)
library(tidyr)
library(plyr)

path=getwd()
histfilename <- paste0(path,"/History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)



fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,"getdata-data-ss06hid.csv")
communities <- read.csv("./getdata-data-ss06hid.csv",
                        colClasses = "character")



agricultureLocigal <- (communities$ACR==3&communities$AGS==6)
communities[which(agricultureLocigal),]

head(communities[which(agricultureLocigal),],3)

###  Answer 123,238,262

## Question 2

url="https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"

download.file(url,"jeff.jpg",mode = "wb")

data <- readJPEG("jeff.jpg", native=TRUE)

quantile(data,na.rm=TRUE)


## Question 3

url1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,"GDP.CSV")
download.file(url2,"FEDSTATS_Country.CSV")
gdp <- read.csv("GDP.CSV",skip=4)
fedstats <- read.csv("FEDSTATS_Country.csv")
inboth <- merge(gdp,fedstats,by.x="X",by.y="CountryCode")
## inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
## inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
inboth_ranked <- arrange(inboth,desc(X.1))
onlyRanked <- inboth_ranked[inboth_ranked$X.1>0,]

## Question 4

highincomeOECD <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"),]
highincomeNONOECD <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: nonOECD"),]
mean(highincomeOECD$X.1)
mean(highincomeNONOECD$X.1,na.rm=TRUE)



