# 枠線なしの theme_bw()
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_minimal()

# グラフの描画
print(g)