# 折れ線グラフをプロットする。
x <- cumsum(rnorm(50))  # ランダムウォーク
plot(x, type = "l", main = "ランダムウォーク")