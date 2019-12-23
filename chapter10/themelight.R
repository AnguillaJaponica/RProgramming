# 白の背景、薄い黒の枠線、薄いグレーのグリッドライン
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_light()

# グラフの描画
print(g)