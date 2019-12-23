# 棒グラフの作成 (要素別)
#   fill: clarity で色分け
g <- ggplot(diamonds, aes(cut)) +
  geom_bar(position="dodge", aes(fill = clarity))

# グラフの描画
print(g)