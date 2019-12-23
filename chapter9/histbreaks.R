# 相対頻度でヒストグラムを作成する
breaks <- seq(-3, 3, by = 0.4)
hist(x, breaks = breaks, main = "正規乱数のヒストグラム")