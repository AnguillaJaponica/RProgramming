# x軸を対数スケールで描画領域の範囲指定をする
plot.new()
plot.window(c(0.01, 100), c(0, 1), log = "x")
axis(1L)
axis(2L)
title("対数軸")