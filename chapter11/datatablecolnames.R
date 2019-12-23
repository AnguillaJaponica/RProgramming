data_sake <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/sake.csv", as.is=TRUE, fileEncoding = "UTF-8")
library("DT")
datatable(data = data_sake, colnames = c("酒蔵名", "銘柄", "住所", "緯度", "経度"))
