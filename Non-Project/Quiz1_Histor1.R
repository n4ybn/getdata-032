
R version 3.2.2 (2015-08-14) -- "Fire Safety"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from C:/downloads/Coursera/R-Programming/.RData]

> library(xlsx)
Loading required package: rJava
Loading required package: xlsxjars
> library(xlsx)
> ## Get DAta Quiz 1
> ## Q1
> library(data.table)
data.table 1.9.4  For help type: ?data.table
*** NB: by=.EACHI is now explicit. See README to restore previous behaviour.
> setwd("C:/downloads/Coursera/getdata-032")
> if(!file.exists("data")){dir.create("data")}
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/UScommunities2006microdata.csv",method="wininet")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB

> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:02:14 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "NatGasAquProg.csv"             
[3] "NatGasAquProg.xlsx"             "UScommunities2006microdata.csv"
> 
> idaho2<- fread("./data/UScommunities2006microdata.csv")
> class(idaho2)
[1] "data.table" "data.frame"
> 
> ## Q3
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx",method="wininet")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'
Content type 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' length 16197 bytes (15 KB)
downloaded 15 KB

> 
> library(xlsx)
> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:02:14 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "NatGasAquProg.csv"             
[3] "NatGasAquProg.xlsx"             "UScommunities2006microdata.csv"
> 
> natgas <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
Error in .jcall("RJavaTools", "Ljava/lang/Object;", "invokeMethod", cl,  : 
  java.util.zip.ZipException: invalid code -- missing end-of-block
> class(natgas)
Error: object 'natgas' not found
> install.packages("xlsx")
Error in install.packages : Updating loaded packages

Restarting R session...

> install.packages("xlsx")
Installing package into 'C:/Users/dupre/Documents/R/win-library/3.2'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.2/xlsx_0.5.7.zip'
Content type 'application/zip' length 401142 bytes (391 KB)
downloaded 391 KB

package 'xlsx' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\dupre\AppData\Local\Temp\RtmpM9hXML\downloaded_packages
> natgas <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
Error: could not find function "read.xlsx"
> class(natgas)
Error: object 'natgas' not found
> ## Get DAta Quiz 1
> ## Q1
> library(data.table)
data.table 1.9.4  For help type: ?data.table
*** NB: by=.EACHI is now explicit. See README to restore previous behaviour.
> setwd("C:/downloads/Coursera/getdata-032")
> if(!file.exists("data")){dir.create("data")}
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/UScommunities2006microdata.csv",method="wininet")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB

> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:04:03 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "NatGasAquProg.csv"             
[3] "NatGasAquProg.xlsx"             "UScommunities2006microdata.csv"
> 
> idaho2<- fread("./data/UScommunities2006microdata.csv")
> class(idaho2)
[1] "data.table" "data.frame"
> 
> ## Q3
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx",method="wininet")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'
Content type 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' length 16197 bytes (15 KB)
downloaded 15 KB

> 
> library(xlsx)
Loading required package: rJava
Loading required package: xlsxjars
> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:04:04 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "NatGasAquProg.csv"             
[3] "NatGasAquProg.xlsx"             "UScommunities2006microdata.csv"
> 
> natgas <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
Error in .jcall("RJavaTools", "Ljava/lang/Object;", "invokeMethod", cl,  : 
  java.util.zip.ZipException: invalid code -- missing end-of-block
> class(natgas)
Error: object 'natgas' not found
> ##install.packages("xlsx")
> 
> natgas <- read.xlsx2("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
Error in .jcall("RJavaTools", "Ljava/lang/Object;", "invokeMethod", cl,  : 
  java.util.zip.ZipException: invalid code -- missing end-of-block
> class(natgas)
Error: object 'natgas' not found
> version
               _                           
platform       i386-w64-mingw32            
arch           i386                        
os             mingw32                     
system         i386, mingw32               
status                                     
major          3                           
minor          2.2                         
year           2015                        
month          08                          
day            14                          
svn rev        69053                       
language       R                           
version.string R version 3.2.2 (2015-08-14)
nickname       Fire Safety                 
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'
Content type 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' length 16197 bytes (15 KB)
downloaded 15 KB

> 
> library(xlsx)
> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:19:49 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "DATA.gov_NGAP.xlsx"            
[3] "NatGasAquProg.csv"              "NatGasAquProg.xlsx"            
[5] "NGAP.xlsx"                      "UScommunities2006microdata.csv"
> 
> natgas <- read.xlsx2("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
Error in .jcall("RJavaTools", "Ljava/lang/Object;", "invokeMethod", cl,  : 
  java.util.zip.ZipException: invalid code -- missing end-of-block
> class(natgas)
Error: object 'natgas' not found
> ##install.packages("xlsx")
> ## Get DAta Quiz 1
> ## Q1
> library(data.table)
> setwd("C:/downloads/Coursera/getdata-032")
> if(!file.exists("data")){dir.create("data")}
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/UScommunities2006microdata.csv",method="wininet")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB

> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:21:53 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "DATA.gov_NGAP.xlsx"            
[3] "NatGasAquProg.csv"              "NatGasAquProg.xlsx"            
[5] "NGAP.xlsx"                      "UScommunities2006microdata.csv"
> 
> idaho2<- fread("./data/UScommunities2006microdata.csv")
> class(idaho2)
[1] "data.table" "data.frame"
> 
> ## Q3
> fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
> 
> ## Windows version of download
> download.file(fileURL,destfile = "./data/NatGasAquProg.xlsx",mode='wb')
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx'
Content type 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' length 16197 bytes (15 KB)
downloaded 15 KB

> 
> library(xlsx)
> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:21:53 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "DATA.gov_NGAP.xlsx"            
[3] "NatGasAquProg.csv"              "NatGasAquProg.xlsx"            
[5] "NGAP.xlsx"                      "UScommunities2006microdata.csv"
> 
> natgas <- read.xlsx2("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
> class(natgas)
[1] "data.frame"
> ##install.packages("xlsx")
> natgas <- as.data.table(natgas)
> class(natgas)
[1] "data.table" "data.frame"
> install.packages("xlconnect")
Installing package into 'C:/Users/dupre/Documents/R/win-library/3.2'
(as 'lib' is unspecified)
Warning in install.packages :
  package 'xlconnect' is not available (for R version 3.2.2)
Warning in install.packages :
  Perhaps you meant 'XLConnect' ?
> install.packages("XLConnect")
Installing package into 'C:/Users/dupre/Documents/R/win-library/3.2'
(as 'lib' is unspecified)
also installing the dependency 'XLConnectJars'

trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.2/XLConnectJars_0.2-9.zip'
Content type 'application/zip' length 12947716 bytes (12.3 MB)
downloaded 12.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.2/XLConnect_0.2-11.zip'
Content type 'application/zip' length 5109784 bytes (4.9 MB)
downloaded 4.9 MB

package 'XLConnectJars' successfully unpacked and MD5 sums checked
package 'XLConnect' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\dupre\AppData\Local\Temp\RtmpM9hXML\downloaded_packages
> library(XLConnect)
Loading required package: XLConnectJars
XLConnect 0.2-11 by Mirai Solutions GmbH [aut],
  Martin Studer [cre],
  The Apache Software Foundation [ctb, cph] (Apache POI, Apache Commons
    Codec),
  Stephen Colebourne [ctb, cph] (Joda-Time Java library)
http://www.mirai-solutions.com ,
http://miraisolutions.wordpress.com

Attaching package: 'XLConnect'

The following objects are masked from 'package:xlsx':

    createFreezePane, createSheet, createSplitPane, getCellStyle,
    getSheets, loadWorkbook, removeSheet, saveWorkbook, setCellStyle,
    setColumnWidth, setRowHeight

> dat <- readWorksheetFromFile("./data/NatGasAquProg.xlsx",sheet=1,startRow=18,endCol=15)
> 
> sum(dat$Zip*dat$Ext,na.rm=T)
Error in dat$Zip * dat$Ext : non-numeric argument to binary operator
> 
> library(XLConnect)
> 
> dateDownloaded <- date()
> dateDownloaded
[1] "Sun Sep 13 18:33:18 2015"
> 
> list.files("data")
[1] "cameras.csv"                    "DATA.gov_NGAP.xlsx"            
[3] "NatGasAquProg.csv"              "NatGasAquProg.xlsx"            
[5] "NGAP.xlsx"                      "UScommunities2006microdata.csv"
> dat <- readWorksheetFromFile("./data/NatGasAquProg.xlsx",sheet=1,startRow=18,endCol=15)
> 
> 
> 
> natgas <- read.xlsx2("./data/NatGasAquProg.xlsx",sheetIndex=1,header=TRUE)
> class(natgas)
[1] "data.frame"
> 
> 
> 
> 
> dat <- as.data.table(dat)
> class(dat)
[1] "data.table" "data.frame"
> ##install.packages("xlsx")
> sum(dat$Zip*dat$Ext,na.rm=T)
Error in dat$Zip * dat$Ext : non-numeric argument to binary operator
> q3<-sum(dat$Zip*dat$Ext,na.rm=T)
Error in dat$Zip * dat$Ext : non-numeric argument to binary operator
> q3
Error: object 'q3' not found
> 
> dat <- read.xlsx2("./data/NatGasAquProg.xlsx",sheetIndex=1,startRow=18,colIndex = 15)
> class(dat)
[1] "data.frame"
> dat <- as.data.table(dat)
> class(dat)
[1] "data.table" "data.frame"
> ##install.packages("xlsx")
> q3<-sum(dat$Zip*dat$Ext,na.rm=T)
> q3
[1] 0
> View(dat)
> dat <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,rowIndex=18:23,colIndex7:15)
Error in read.xlsx("./data/NatGasAquProg.xlsx", sheetIndex = 1, rowIndex = 18:23,  : 
  object 'colIndex7' not found
> class(dat)
[1] "data.table" "data.frame"
> 
> dat <- read.xlsx("./data/NatGasAquProg.xlsx",sheetIndex=1,rowIndex=18:23,colIndex=7:15)
> class(dat)
[1] "data.frame"
> 
> sum(dat$Zip*dat$Ext,na.rm=T) 