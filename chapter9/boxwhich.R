# 2x2の描画領域を用意する
par(mfrow = c(2, 2), mar = rep(1, 4), oma = rep(1, 4))
plot.new()

# 枠を描画する
box(which = "plot", lty = "solid", lwd = 1)
box(which = "figure", lty = "dotted", lwd = 1)
box(which = "inner", lty = "dashed", lwd = 2)
box(which = "outer", lty = "longdash", lwd = 2)