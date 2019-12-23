# 散布図の作成
#   colour: Sepal.Width で色分け
#   shape:  Species で形分け

g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(colour = Sepal.Width, shape = Species))

# グラフの描画
print(g)