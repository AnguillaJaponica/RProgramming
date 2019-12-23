# 白の背景、細い黒の枠線、グレーのグリッドライン
g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species)) +
  theme_bw()

# グラフの描画
print(g)