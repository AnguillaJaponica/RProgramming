library("dygraphs")
library("xts")
data_weight <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/ore_wt.csv", as.is=TRUE)
data_weight <- xts(x=data_weight$weight, order.by=as.Date(data_weight$time))

dygraph(data=data_weight) %>%
  dyAnnotation(x = "2015-06-01", text = "飲み会", width = 60) %>%
  dyShading(from = "2015-04-29", to = "2015-05-05", color = "lightgrey", axis = "x")
