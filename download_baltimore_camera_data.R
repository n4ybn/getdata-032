## URL from site.
https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD

fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
dir.create("data")

## Windows version of download
download.file(fileURL,destfile = "./data/cameras.csv",method="wininet")

dateDownloaded <- date()
dateDownloaded

## [1] "Sat Sep 12 22:36:45 2015"

list.files(data)

cameraData <- read.csv("./data/cameras.csv")

library(xlsx)
xlsx2

XLConnect
