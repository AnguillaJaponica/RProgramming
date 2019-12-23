# 描画領域を作成する
par(mar = c(3.1, 3.1, 1.1, 1.1))
plot.new()
plot.window(c(0, 10), c(1e-2, 1e+2), log = "y", yaxp = c(1e-2, 1e+2, 3))
axis(1)
axis(2)

# グリッドを描画する
grid(6, 4, col = "black", lwd = 2)