# 描画領域を作成する
par(mar = c(2.1, 2.1, 0.1, 0.1))
plot.new()
plot.window(c(0, 10), c(0, 10), asp = 1)
axis(1)
axis(2)

# 円を描画する
r <- 3
theta <- seq(0, 2 * pi, by = 0.01)
x <- r * cos(theta) + 2
y <- r * sin(theta) + 2
polygon(x, y)

# 楕円を描画する
x0 <- 4 * cos(theta)
y0 <- 2 * sin(theta)
phi <- 30 * pi / 180
x <- x0 * cos(phi) - y0 * sin(phi) + 5
y <- x0 * sin(phi) + y0 * cos(phi) + 3
polygon(x, y)

# 円弧を描画する
theta <- seq(0, 0.5 * pi, by = 0.01)
x <- 9 * cos(theta)
y <- 9 * sin(theta)
lines(x, y, lty = "dashed")