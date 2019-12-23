# アスペクト比1で描画領域の範囲指定をする
plot.new()
plot.window(c(0, 5), c(0, 1), asp = 1)
axis(1L)
axis(2L)
title("アスペクト比指定")