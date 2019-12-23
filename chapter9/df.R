# データフレームをプロットする
x <- runif(50)
y <- 2 * x + rnorm(x, sd = 0.3)
df <- data.frame(Predictor = x, Response = y)
plot(df, main = "データフレーム")