# x軸の範囲を0から5、y軸の範囲を0から1に指定する
plot.new()
plot.window(c(0, 5), c(0, 1))
axis(1L)
axis(2L)
title("範囲指定")