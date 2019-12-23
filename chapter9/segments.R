# 描画領域を作成する
par(mar = c(2.1, 2.1, 0.1, 0.1))
plot.new()
axis(1)
axis(2)

# segments 関数で線を描画する
segments(0.1, 0.1, 0.9, 0.7)