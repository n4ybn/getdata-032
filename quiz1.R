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
download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx",method="wininet")

library(xlsx)

dateDownloaded <- date()
dateDownloaded

list.files("data")

natgas <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
class(natgas)

