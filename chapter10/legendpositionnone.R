# 凡例なし
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_bw() +
  theme(legend.position = "none")

# グラフの描画
print(g)