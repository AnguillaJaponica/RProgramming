# x, y軸を正負反転
g <- ggplot(data=diamonds) +
  geom_point(aes(carat, price)) +
  theme_bw() +
  scale_x_reverse() +
  scale_y_reverse()

# グラフの描画
print(g)