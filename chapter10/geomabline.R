library(ggplot2)

# 折れ線グラフ + 回帰直線の作成
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point() +
  geom_abline(intercept =-0.3631, slope = 0.4158)

# グラフの描画
print(g)