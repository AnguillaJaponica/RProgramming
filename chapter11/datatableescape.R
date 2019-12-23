data_sake <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/sake.csv", as.is=TRUE, fileEncoding = "UTF-8")
library("DT")
datatable(data = data_sake, colnames = c("<a href='https://www.japansake.or.jp/sake/know/what/02.html'>日本酒</a>" = 2), escape=FALSE, rownames=FALSE)
