# 描画領域を作成する
par(mar = c(4.1, 4.1, 0.1, 0.1))
plot.new()
box()
axis(1)
axis(2)

# 凡例を描画する
legend("topleft", "左上")
legend("topright", "右上", inset = 0.1)
legend(0.2, 0.6, c("点", "線", "両方"), pch = c(1, NA, 2), lty = c(NA, 1, 2), x.intersp = 4)
legend(0.8, 0.2, c("点", "線", "両方"), pch = c(1, NA, 2), lty = c(NA, 1, 2), xjust = 0.5, yjust = 0.5)