library(datasets)
data("iris")
?iris
class(iris)
?apply
iris
?iris
iris3
iris3[,,"Virginica"]
iris3[,"Sepal L.","Virginica"]
mean(iris3[,"Sepal L.","Virginica"])
colMeans(iris3)
colMeans(iris)
apply(iris,2,mean)
apply(iris,1,mean)
apply(iris[,1:4],2,mean)
apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)
rc<-apply(iris[,1:4],2,mean)
class(rc)
rc<-apply(iris[,1:4],2,mean)
apply(iris[,1:4],2,mean)
library(datasets)
data("mtcars")
?mtcars
view(mtcars)
View(mtcars)
sapply(mtcars,cly,mean)
sapply(mtcars,cyl,mean)
tapply(mtcars$cyl, mtcars$mpg, mean)
with(mtcars, tapply(mpg, cyl, mean))
split(mtcars, mtcars$cyl)
with(mtcars, tapply(mpg, cyl, mean))
with(mtcars, tapply(hp, cyl, mean))
hp<-with(mtcars, tapply(hp, cyl, mean))
hp[1]
hp[3]
diff<=abs(hp[3]-hp[1])
diff<=hp[3]-hp[1])
diff<=hp[3]-hp[1]
diff<=hp[3]-hp[1]
abs(hp[3]-hp[1])
debug(ls)
ls
ls(test)
debug(ls)
ls("test")
set.seed(1)
rpois(5,2)
library(xlsx)
install.packages(rJava)
install.packages("rJava")
library(xlsx)
install.packages("xlsx")
install.packages("xlsx")
library(xlsx)
install.packages("RMySQL")
library(RMySQL)
mydb <- dbConnect(MySQL(),user=root,host="oralinux")
mydb <- dbConnect(MySQL(),user="root",host="oralinux")
mydb <- dbConnect(MySQL(),user="root",password="Sunfish8",host="oralinux")
result <- dbGetQuery(mydb,"show databases");
View(result)
mydb <- dbConnect(MySQL(),user="anonymouse",host="oralinux")
mydb <- dbConnect(MySQL(),user="anonymous",host="oralinux")
mydb <- dbConnect(MySQL(),user="anonymos",host="oralinux")
result <- dbGetQuery(mydb,"show users");
mydb <- dbConnect(MySQL(),user="user",host="oralinux")
result <- dbGetQuery(mydb,"show databases");
result
dbDisconnect()
dbDisconnect(mydb)
library(httr)
oauth_endpoint("github")
oauth_endpoints("github")
oauth_endpoint("MyfirstAppDLD")
oauth_endpoints("MyfirstAppDLD")
oauth_endpoints("github")
myapp <- oauth_app("github",key="27dfae0a566138c206b6",)
myapp <- oauth_app("github",key="27dfae0a566138c206b6", secret = "8975c0f6a26bf59985c571672bb9778ed86c4b89")
github_token <- oauth2.0_token(oath_endpoints("github"),myapp)
github_token <- oauth2.0_token(oauth_endpoints("github"),myapp)
gtoken <-config(token = github_token)
req <- GET("https://api.github.com/rate_limit",gtoken)
stop_for_status(req)
content(req)
gtoken <-config(token = github_token)
github_token <- oauth2.0_token(oauth_endpoints("github"),myapp)
gtoken <-config(token = github_token)
req <- GET("https://api.github.com/rate_limit",gtoken)
stop_for_status(req)
source('C:/downloads/Coursera/getdata-032/quiz2.R')
cls
clear
setwd("C:/downloads/Coursera/getdata-032")
library(httr)
oauth_endpoints("github")
oauth_endpoints("github")
myapp <- oauth_app("github",key="27dfae0a566138c206b6", secret = "8975c0f6a26bf59985c571672bb9778ed86c4b89")
gtoken <-config(token = github_token)
req <- GET("https://api.github.com/rate_limit",gtoken)
stop_for_status(req)
content(req)
library(httr)
oauth_endpoints("github")
oauth_endpoints("github")
myapp <- oauth_app("github",key="27dfae0a566138c206b6", secret = "8975c0f6a26bf59985c571672bb9778ed86c4b89")
github_token <- oauth2.0_token(oauth_endpoints("github"),myapp)
req <- GET("https://api.github.com/rate_limit",gtoken)
stop_for_status(req)
content(req)
library(httpuv)
install.packages("httpuv")
library(httpuv)
library(httpuv)
source('C:/downloads/Coursera/getdata-032/quiz2.R')
content(req)
library(jsonlite)
jsonData <- fromJSON()
jsonOut <- content(req)
jsonData <- fromJSON(jsonOut)
myjson <- toJSON(jsonOut)
cat myjson
cat(myjson)
names(myjson)
names(myjson$owner)
myjson@owner
myjson
jsonOut
req
req$search
req
stop_for_status(req)
req
req <- GET("https://api.github.com/rate_limit",gtoken)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)
names(jsonData$owner)
names(jsonData$name)
names(jsonData$owner)
names(jsonData$owner$login)
names(jsonData$owner$id)
View(jsonData)
names(jsonData$name)
jsonData[,name=datasharing]
names(jsonData$name)
jsonData@name
jsonData$name
jsonData$name$datasharing
jsonData$name=datasharing
jsonData$name(datasharing)
names(jsonData$name)
names(jsonData$name=datasharing)
names(jsonData$name==datasharing)
names(jsonData$name$datasharing)
names(jsonData$name[datasharing])
source('C:/downloads/Coursera/getdata-032/quiz2.R')
library(data.table)
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
sqldf("select pwgtp1 from acs")
library(sqldf)
sqldf("select pwgtp1 from acs")
acs <- fread("./data/UScommunities2006microdata.csv")
class(acs)
sqldf("select pwgtp1 from acs where AGEP < 50")
dbUnloadDriver()
dbUnloadDriver(acs)
dbUnloadDriver(mydb)
dbUnloadDriver(MySQL()
;
library?
''
?library
detach(MySQL())
detach(RMySQL)
detach(RMySQL())
library(RMySQL,detach())
sqldf("select pwgtp1 from acs where AGEP < 50")
?sqldf
install.packages(sqldf)
install.packages("sqldf")
install.packages("sqldf")
librar(sqldf)
library(sqldf)
sqldf("select pwgtp1 from acs where AGEP < 50")
sqldf("select pwgtp1 from acs where AGEP < 50")
q2 <- sqldf("select pwgtp1 from acs where AGEP < 50")
View(q2)
q2 <- sqldf("select pwgtp1,acs from acs where AGEP < 50")
q2 <- sqldf("select pwgtp1,AGEP from acs where AGEP < 50")
sqldf("select * from acs where AGEP < 50 and pwgtp1")
unique(acs$AGEP)
Q3a <- unique(acs$AGEP)
Q3b<-sqldf("select distinct AGEP from acs")
View(Q3b)
unique(acs$AGEP)
sqldf("select distinct AGEP from acs")
sqldf("select AGEP where unique from acs")
sqldf("select unique AGEP from acs")
library(XML)
fileURL <- "http://biostat.jhsph.edu/~jleek/contact.html"
doc <- htmlTreeParse(fileURL,useInternalNodes = TRUE)
library(XML)
doc <- htmlParse(fileURL)
class(doc)
names(doc)
namd(doc)
doc$1
xmlname(doc)
xml(doc)
xmlAttrs(doc)
doc[[1]]
doc[[name]]
xmlAttrs(doc)
doc <- xmlTreeParse(doc,useInternalNodes = TRUE)
doc <- xmlTreeParse(doc,useInternal = TRUE)
doc <- xmlTreeParse(fileurl,useInternalNodes = TRUE)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE)
doc <- xmlTreeParse(fileURL)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE)
?xmlTreeParse
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE,isHTML = TRUE)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE,isHTML = TRUE);
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE);
doc <- htmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE,isHTML = TRUE);
doc(1)
xmlName(doc)
xmlName(doc,root)
names(doc[[1]])
names(doc[[]])
names(doc[[i]])
library(xml2)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE);
doc <- htmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE,isHTML = TRUE);
class(doc)
xml_children(Doctype())
xml_children(Doc)
xml_children(doc)
doc <- xmlTreeParse(fileURL,useInternalNodes = TRUE,isURL=TRUE);
doc <- xmlTreeParse(fileURL);
fileURL
doc <- fread(fileURL)
library(fread)
library(data.table)
doc <- fread(fileURL)
xml_children(doc)
doc
library(XML)
tables <- read_html(fileURL)
n.rows <- unlist(lapply(tables,function(t) dim(t)[1]))
unlist(lapply(tables,function(t) dim(t)[1]))
tables[[1]]
tables[[2]]
tables[[]]
tables[[1:10]]
tables[[12]]
theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
webpage <- getURL(theurl)
webpage <- readLines(tc <- textConnection(webpage)); close(tc)
library(RCurl)
library(XML)
theurl <- "http://biostat.jhsph.edu/~jleek/contact.html"
webpage <- getURL(theurl)
webpage <- readLines(tc <- textConnection(webpage)); close(tc)
pagetree <- htmlTreeParse(webpage,error=function(...){},useInternalNodes = TRUE)
class pagetree
class(pagetree)
doc<-fread(pagetree)
doc<-freed(pagetree)
doc<-fread(pagetree)
getNodeSet(pagetree)
getNodeSet(pagetree,">")
getNodeSet(pagetree,"{")
getNodeSet(pagetree,"")
xpathApply(pagetree,"//a[@href],xmlGetAttr, "href")
xpathApply(pagetree,"//a[@href]",xmlGetAttr, "href")
pagetree[[10]]
pagetree[[10]][1]
pagetree[[1]][1]
pagetree[[1]]
webpage[]
webpage[1]
webpage[2]
webpage[3]
class(webpage)
webpage[10,20,30,100]
webpage[c(10,20,30,100)]
nchar(webpage[c(10,20,30,100)])
library(XML)
theurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
tables <- readHTMLTable(theurl)
n.rows = unlist(lapply(tables,function(t) dim(t)[1]))
?readHTMLTable
tables <-read.csv2(theurl,header=FALSE,sep=" ",skip=4)
View(tables)
widths<- c(-1,9,-5,4,-1,3,-5,4,-1,3,-5,4,-1,3,-5,4,-1,3)
tables <- read.fwf(theurl,widths,header=FALSE)
View(tables)
tables <- read.fwf(theurl,widths,header=FALSE,skip=4)
View(tables)
sum(tables[,4])
sum(tables[,3])
sum(tables[,2])
summary(tables)
sum(tables)
sum(tables[,6])
sum(tables[,7])
sum(tables[,4])
setwd("C:/downloads/Coursera/getdata-032")
source('C:/downloads/Coursera/getdata-032/run_analysis.R', echo=TRUE)
url1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,"GDP.CSV")
download.file(url2,"FEDSTATS_Country.CSV")
gdp <- read.csv("GDP.CSV",skip=4)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
library(data.table)
library(sqldf)
library(dplyr)
library(tidyr)
library(plyr)
url1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,"GDP.CSV")
download.file(url2,"FEDSTATS_Country.CSV")
gdp <- read.csv("GDP.CSV",skip=4)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
fedstats <- read.csv("FEDSTATS_Country.csv")
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
View(inboth_sorted)
table(GDP$X)
table(gdp$X)
table(gdp$X,fedstats.CountryCode)
table(gdp$X,fedstats$CountryCode)
table(fedstats$CountryCode)
sum(is.na(gdp))
View(gdp)
sum(is.na(gdp$X))
sum(is.na(gdp$X.4))
sum(is.na(fedstats$CountryCode))
sum(is.na(fedstats))
merge(gdp,fedstats,gdp$X,fedstats$CountryCode)
merge(gdp,fedstats,by.gdp$X,by.fedstats$CountryCode)
fedstats <- read.csv("FEDSTATS_Country.csv")
merge(gdp,fedstats,by.gdp$X,by.fedstats$CountryCode)
sum(is.na(fedstats$CountryCode))
merge(gdp,fedstats,by.x="X",by.y="CountryCode")
inboth <- merge(gdp,fedstats,by.x="X",by.y="CountryCode")
View(inboth)
inboth <- merge(gdp,fedstats,by.x="X",by.y="CountryCode",all=TRUE)
View(inboth)
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
View(inboth)
inboth[order(inboth$X.4)]
arrange(inboth,desc(X.4))
inboth_ranked <- arrange(inboth,desc(X.4))
View(inboth_ranked)
inboth <- merge(gdp,fedstats,by.x="X",by.y="CountryCode")
inboth_ranked <- arrange(inboth,desc(X.1))
View(inboth_ranked)
inboth$X.1 <- as.numeric(as.numeric(gsub(",", "", inboth$X.1)))
inboth_ranked <- arrange(inboth,desc(X.1))
inboth_ranked <- arrange(inboth,desc(X.1))
summary(inboth_ranked$X.1)
summary(inboth_ranked$X)
sum(inboth_ranked$X)
count(inboth_ranked$X)
count(inboth_ranked$X)
inboth_ranked[inboth_ranked$X.1>0]
inboth_ranked[inboth_ranked$X.1>0,]
onlyRanked <- inboth_ranked[inboth_ranked$X.1>0,]
summary(onlyRanked)
View(onlyRanked)
inboth_ranked <- arrange(inboth,desc(X.1))
onlyRanked <- inboth_ranked[inboth_ranked$X.1>0,]
inboth_ranked <- arrange(inboth,desc(X.1))
View(inboth_ranked)
highincome <- inboth_ranked[which(inboth_ranked$="High income: OECD"),]
highincome <- inboth_ranked[which(inboth_ranked$=="High income: OECD"),]
highincome <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"),]
View(highincome)
highincome <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"&inboth_ranked$Income.Group=="High income nonOECD"),]
highincome <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"|inboth_ranked$Income.Group=="High income nonOECD"),]
View(inboth)
highincome <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"|inboth_ranked$Income.Group=="High income: nonOECD"),]
View(highincome)
highincomeboth <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"|inboth_ranked$Income.Group=="High income: nonOECD"),]
highincomeOECD <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: OECD"),]
highincomeNONOECD <- inboth_ranked[which(inboth_ranked$Income.Group=="High income: nonOECD"),]
mean(highincomeOECD$X.1)
mean(highincomenonOECD$X.1)
mean(highincomeNONOECD$X.1)
mean(highincomeNONOECD$X.1)
View(highincomeNONOECD)
mean(highincomeNONOECD$X.1,na.rm=TRUE)
quantile(inboth_ranked)
quantile(inboth_ranked$X.1,na.rm=TRUE)
table(inboth_ranked[190:143,],inboth_ranked[inboth_ranked$Income.Group,])
table(inboth_ranked[190:143,],inboth_ranked$Income.Group)
table(inboth_ranked$X.1,inboth_ranked$Income.Group)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
path=getwd()
histfilename <- paste0(path,"/History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
