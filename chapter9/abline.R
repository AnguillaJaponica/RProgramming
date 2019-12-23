# 散布図を作成する
x <- runif(30, 0, 10)
y <- 2 * x - 1 + rnorm(x)
plot(x, y, main = "線形回帰")

# 回帰直線を重ね合わせる
model <- lm(y ~ x)
abline(model, lwd = 2)