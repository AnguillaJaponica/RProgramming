# 右側、デフォルト
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_bw() +
  theme(legend.position = "right")

# グラフの描画
print(g)