# plotrixパッケージをロードする
library("plotrix")
# 描画領域を作成する
par(mar = c(2.1, 2.1, 0.1, 0.1))
plot.new()
plot.window(c(0, 10), c(0, 10), asp = 1)
axis(1)
axis(2)
# 円を描画する
draw.circle(2, 2, radius = 3)
# だ円を描画する
draw.ellipse(5, 3, a = 4, b = 2, angle = 30)
# 円弧を描画する
draw.arc(0, 0, radius = 9, deg1 = 0, deg2 = 90, lty = "dashed")