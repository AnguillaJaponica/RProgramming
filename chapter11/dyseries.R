library("dygraphs")
library("xts")
data_weight <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/ore_wt.csv", as.is=TRUE)
data_weight <- xts(x=data_weight$weight, order.by=as.Date(data_weight$time))

data_steps <- read.csv("https://raw.githubusercontent.com/dichika/mydata/master/ore.csv", as.is=TRUE)
data_steps <- xts(x=data_steps$steps, order.by=as.Date(data_steps$time))
data_merged <- merge(data_weight, data_steps)
colnames(data_merged) <- c("weight", "steps")
# 2軸プロットを描く
dygraph(data=data_merged) %>% dySeries(axis="y2", name="steps") %>%
  dyAxis(name = "y2", valueRange = c(2000, 30000))
