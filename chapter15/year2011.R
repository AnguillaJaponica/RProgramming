library(quantmod)
library(openair)
# 日経平均株価の取得
nikkei <- getSymbols("^N225", src = "yahoo", from = "2011-01-01", to = "2014-12-31",
    auto.assign = FALSE)
# データの加工
nikkei.close <- nikkei %>% as.data.frame %>% mutate(date = as.Date(rownames(.))) %>%
    select(date, N225.Close)
# 2011年の終値のカレンダープロット
calendarPlot(nikkei.close, pollutant = "N225.Close", year = 2011)