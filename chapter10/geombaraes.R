# 棒グラフの作成 (積み上げ)
#   fill: clarity で色分け
g <- ggplot(diamonds, aes(cut)) +
  geom_bar(aes(fill = clarity))

# グラフの描画
print(g)