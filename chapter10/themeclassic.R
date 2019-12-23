# 背景なし、L字の黒の枠線、グリッドラインなし
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_classic()

# グラフの描画
print(g)