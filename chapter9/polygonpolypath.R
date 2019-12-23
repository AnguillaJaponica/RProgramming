# 描画領域を作成する
par(mfrow = c(1, 2), mar = c(0.1, 0.1, 4.1, 0.1))

# polygon 関数で多角形を描画する
plot.new()
title("polygon")
x <- c(0.0, 0.2, 0.8, 1.0, NA, 0.0, 0.2, 0.8, 1.0)
y <- c(0.5, 0.0, 0.5, 0.0, NA, 1.0, 0.5, 1.0, 0.5)
polygon(x, y, col = c("black", "gray"), border = c("black", NA))

# polypath 関数で多角形を描画する
plot.new()
title("polypath")
x <- c(
    0.0, 0.0, 1.0, 1.0, NA,
    0.2, 0.2, 0.8, 0.8, NA,
    0.0, 0.0, 1.0, 1.0, NA,
    0.2, 0.2, 0.8, 0.8
)
y <- c(
    0.0, 0.4, 0.4, 0.0, NA,
    0.1, 0.3, 0.3, 0.1, NA,
    0.6, 1.0, 1.0, 0.6, NA,
    0.9, 0.7, 0.7, 0.9
)
polypath(x, y, col = "gray")