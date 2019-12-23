library(ggplot2)
# 回帰直線の係数
coeff <- lm.cars$coefficients
# 回帰直線の傾き
slope <- coeff[2]
# 回帰直線の切片
intercept <- coeff[1]
p <- ggplot(data = cars, aes(x = speed, y = dist)) + geom_point() +
         geom_abline(intercept = intercept, slope = slope)
print(p)