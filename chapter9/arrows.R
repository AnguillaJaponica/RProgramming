# 描画領域を作成する
par(mar = c(2.1, 2.1, 0.1, 0.1))
plot.new()
axis(1)
axis(2)

# arrows関数で矢印を描画する
arrows(0.1, 0.1, 0.9, 0.7)
arrows(0.5, 0.1, 0.4, 0.9, code = 3, angle = 60)