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
load("C:/downloads/Coursera/Get_data_Quiz3/getdata-data-ss06hid.csv")
source('C:/downloads/Coursera/Get_data_Quiz3/quiz3.R', echo=TRUE)
source('C:/downloads/Coursera/Get_data_Quiz3/quiz3.R', echo=TRUE)
setwd("C:/downloads/Coursera/Get_data_Quiz3")
source('C:/downloads/Coursera/Get_data_Quiz3/quiz3.R', echo=TRUE)
View(communities)
agricultureLogical <- communities[,ACR=3&AGS=6]
agricultureLogical <- communities[,ACR==3&AGS==6]
agricultureLogical <- communities[,communities$ACR==3&communities$AGS==6]
View(communities)
agricultureLogical <- communities[,communities$ACR=3&communities$AGS=6]
source('C:/downloads/Coursera/Get_data_Quiz3/quiz3.R', echo=TRUE)
outcome <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
agricultureLogical <- communities$ACR=3 & communities$AGS=6
communities$ACR=3 & communities$AGS=6
communities$ACR=3
communities$ACR > 2
communities$ACR = 2
communities$ACR == 2
communities$ACR == 3
communities$ACR == 3 communities$AGS ==6
communities$ACR == 3 communities$AGS == 6
communities$ACR == 3 & communities$AGS == 6
agriculturalLogical <- communities$ACR == 3  communities$AGS == 6
agriculturalLogical <- communities$ACR == 3 & communities$AGS == 6
agriculturalLogical2 <- communities$ACR == 3 | communities$AGS == 6
which(communities,TRUE)
which(communities,agriculturalLogical)
which(agriculturalLogical)
which(communities<-agriculturalLogical)
which(communities <- agriculturalLogical)
communities <- read.csv("./getdata-data-ss06hid.csv",
colClasses = "character")
which(communities <- agriculturalLogical)
communities <- read.csv("./getdata-data-ss06hid.csv",
colClasses = "character")
which(agriculturalLogical,arr.ind=TRUE)
which(communities  agriculturalLogical)
which(agriculturalLogical,arr.ind=TRUE)
which(agriculturalLogical)
agriculturalLogical2 <- communities$ACR == 3 | communities$AGS == 6
summarize(agriculturalLogical2)
library(data.table)
library(sqldf)
library(dplyr)
library(tidyr)
library(plyr)
which(agriculturalLogical,arr.ind=TRUE)
summarize(agriculturalLogical2)
count.fields(agriculturalLogical2)
agriculturalLogical2
communities[agriculturalLogical2,]
which(communities[agriculturalLogical,],arr.ind=TRUE)
head(communities[agriculturalLogical2,],3)
communities[agriculturalLogical2,]
head(communities[agriculturalLogical2,],3)
jpeg(filename = url,
width = 480, height = 480, units = "px", pointsize = 12,
quality = 75,
bg = "white", res = NA, family = "", restoreConsole = TRUE,
type = c("windows", "cairo"), antialias)
pic <-jpeg(filename = url,
width = 480, height = 480, units = "px", pointsize = 12,
quality = 75,
bg = "white", res = NA, family = "", restoreConsole = TRUE,
type = c("windows", "cairo"), antialias)
c <-jpeg( url,
width = 480, height = 480, units = "px", pointsize = 12,
quality = 75,
bg = "white", res = NA, family = "", restoreConsole = TRUE,
type = c("windows", "cairo"), antialias)
install.packages("jpeg")
quality = 75,
library(jpeg)
readJPEG(url, native=TRUE)
url="https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
readJPEG(url, native=TRUE)
readJPEG(url, native=TRUE)
download.file(url,"jeff.jpg")
readJPEG("jeff.jpg", native=TRUE)
data <- readJPEG("jeff.jpg", native=TRUE)
quantile(data,probs = c(30,80))
quantile(data,probs = c(30,80)/100)
quantile(data,probs = c(.30,.80))
quantile(data,probs = c(.30,.80),na.rm)
quantile(data,probs = c(.30,.80),na.rm=TRUE)
quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 1)
quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 2)
quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 3)
quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 4)
quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 5)
apply(data,1,quantile,probs=c(.3,.8))quantile(data,probs = c(.30,.80),na.rm=TRUE,type = 5)
apply(data,1,quantile,probs=c(.3,.8))
t(apply(data,1,quantile,probs=c(.3,.8)))
readJPEG(url, native=TRUE)
data <- readJPEG("jeff.jpg", native=TRUE)
download.file(url,"jeff.jpg",mode = wb)
data <- readJPEG("jeff.jpg", native=TRUE)
download.file(url,"jeff.jpg",mode = "wb")
data <- readJPEG("jeff.jpg", native=TRUE)
quantile(data,probs = c(.30,.80),na.rm=TRUE)
url1="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,"GDP.CSV")
download.file(url2,"FEDSTATS_Country.CSV")
fread(input="GDP.CSV")
gdp <- fread(input="GDP.CSV")
read.csv("GDP.CSV")
gdp <- read.csv("GDP.CSV")
View(gdp)
gdp <- read.csv("GDP.CSV",skip=4)
fedstats <- read.csv("FEEDSTATS_Country.csv")
fedstats <- read.csv("FEEDSTATS_Country.CSV")
fedstats <- read.csv("FEDSTATS_Country.CSV")
View(fedstats)
library(sqldf)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode')
View(inboth)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by desc(X.4)')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by X.4 desc')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
View(inboth)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by desc("X.4")')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4"')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.integer(inboth$X.4)
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(inboth$X.4)
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by desc(X.4)')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by X.4 desc')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by X.4')
inboth <- sqldf('select * from gdp, fedstats where gdp.X=fedstats.CountryCode order by "X.4" desc')
inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
View(inboth_sorted)
View(inboth_sorted)
View(inboth)
inboth$X.4 <- as.numeric(as.numeric(gsub(",", "", inboth$X.4)))
inboth_sorted <- sqldf('select * from inboth order by "X.4" desc')
View(inboth_sorted)
View(inboth_sorted)
ocd <- select X.4 from inboth_sorted where "Income.Group" = "High income: OECD")
ocd <- select "X.4" from inboth_sorted where "Income.Group" = "High income: OECD")
ocd <- select * from inboth_sorted where "Income.Group" = "High income: OECD")
ocd <- sqldr(select * from inboth_sorted where "Income.Group" = "High income: OECD")
ocd <- sqldf(select * from inboth_sorted where "Income.Group" = "High income: OECD")
ocd <- sqldf('select * from inboth_sorted where "Income.Group" = "High income: OECD')
ocd <- sqldf('select * from inboth_sorted where "Income.Group" = "High income: OECD"')
View(ocd)
mean(ocd$X.4)
path <- "C:/Downloads/Coursera/getdata-032/"
rc <- setwd(path)
histfilename <- paste0(path,"History","_",format(Sys.time(), "%Y-%m-%d_%H-%M-%S"),".R")
savehistory(histfilename)
