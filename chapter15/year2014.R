# データの加工（日付と終値の2列）
nikkei.close <- nikkei %>% as.data.frame %>% mutate(date = as.Date(rownames(.))) %>%
    select(date, N225.Close)
# カレンダープロット
calendarPlot(nikkei.close, pollutant = "N225.Close", year = 2014)