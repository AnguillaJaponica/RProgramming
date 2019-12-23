data_sake <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/sake.csv", as.is=TRUE, fileEncoding = "UTF-8")
library("DT")
data_sake2 <- data_sake # 誌面では前のコードとの連続性を考えてコピーしているが、本コード（datatablefilter.R）内で完結するならコピーは不要
data_sake2$sake <- as.factor(data_sake2$sake)
datatable(data = data_sake2, filter = "top")
