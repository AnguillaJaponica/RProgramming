# 回帰直線の可視化
p <- ggplot(data = phones %>% as.data.frame, aes(x = year, y = calls)) +
            stat_smooth(method = function(formula, data, weights = weight) 
                            rlm(formula, data, weights = weight, maxit = 100)) + geom_point()