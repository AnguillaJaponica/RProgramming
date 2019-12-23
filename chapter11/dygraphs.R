library("dygraphs")
data_weight <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/ore_wt.csv", as.is=TRUE)
# data_weightは以下のような内容である
#       time weight
# 2015-02-23   63.0
library("xts")
data_weight <- xts(x=data_weight$weight, order.by=as.Date(data_weight$time))
dygraph(data=data_weight, main = "weight data", xlab = "date", ylab = "weight")
