library(ggplot2)

# 折れ線グラフ + 水平線・垂直線の作成
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point() +
  geom_hline(yintercept = 0.75) +
  geom_vline(xintercept = 2.5)

# グラフの描画
print(g)