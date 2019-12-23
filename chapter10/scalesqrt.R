# x,y軸を平方根で変換
g <- ggplot(data=diamonds) +
  geom_point(aes(carat, price)) +
  theme_bw() +
  scale_x_sqrt() +
  scale_y_sqrt()

# グラフの描画
print(g)