# グレーの背景、枠線なし、白のグリッドライン。デフォルト
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_gray()

# グラフの描画
print(g)