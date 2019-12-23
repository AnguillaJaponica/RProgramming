library(dplyr)
library(ggplot2)
set.seed(71)
# ARモデルに従う時系列データの生成
len <- 500
ar.0.9 <- arima.sim(list(order = c(1, 0, 0), ar = 0.9), n = len) %>% as.vector
ar.0.5 <- arima.sim(list(order = c(1, 0, 0), ar = 0.5), n = len) %>% as.vector
ar.m0.5 <- arima.sim(list(order = c(1, 0, 0), ar = -0.5), n = len) %>%
    as.vector
ar.m0.9 <- arima.sim(list(order = c(1, 0, 0), ar = -0.9), n = len) %>%
    as.vector
dat <- data.frame(time = rep(1:len, 4), x = c(ar.0.9, ar.0.5, ar.m0.5,
    ar.m0.9), a1 = c(rep(c(0.9, 0.5, -0.5, -0.9), each = len)))
p <- ggplot(data = dat, aes(x = time, y = x)) + geom_line() + 
       facet_grid(phi ~.) + ggtitle("AR(1)") + theme_bw()
print(p)