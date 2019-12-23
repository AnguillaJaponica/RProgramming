# x, y軸を対数軸 (log10) に変換
g <- ggplot(data = diamonds) +
  geom_point(aes(carat, price)) +
  theme_bw() +
  scale_x_log10() +
  scale_y_log10()

# グラフの描画
print(g)