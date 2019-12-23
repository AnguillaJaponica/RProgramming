library(ggplot2)
set.seed(71)
# MAモデルに従う時系列データの生成
len <- 500
ma.0.9 <- arima.sim(list(order = c(0, 0, 1), ma = 0.9), n = len) %>% as.vector
ma.0.5 <- arima.sim(list(order = c(0, 0, 1), ma = 0.5), n = len) %>% as.vector
ma.m0.5 <- arima.sim(list(order = c(0, 0, 1), ma = -0.5), n = len) %>%
    as.vector
ma.m0.9 <- arima.sim(list(order = c(0, 0, 1), ma = -0.9), n = len) %>%
    as.vector
dat <- data.frame(time = rep(1:len, 4), x = c(ma.0.9, ma.0.5, ma.m0.5,
    ma.m0.9), b1 = c(rep(c(0.9, 0.5, -0.5, -0.9), each = len)))
p <- ggplot(data = dat, aes(x = time, y = x)) + geom_line() + 
         facet_grid(b1 ~ .) + ggtitle("MA(1)") + theme_bw()
print(p)