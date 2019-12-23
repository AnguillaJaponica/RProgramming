# 1次元散布図をプロットする
par(mar = c(5.1, 7.1, 4.1, 2.1), las = 1L)
stripchart(iris[, -5], main = "1次元散布図（iris）", xlab = "サイズ [cm]")