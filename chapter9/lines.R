# 描画領域を作成する
par(mar = c(2.1, 2.1, 0.1, 0.1))
plot.new()
axis(1)
axis(2)

# lines関数で線を描画する
lines(c(0, 0.5, 0.5, 1), c(1, 0.5, 0, 1))