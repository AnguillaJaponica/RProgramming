# y 軸についてカンマ区切りに変更
g <- ggplot(data = diamonds) +
  geom_point(aes(carat, price)) +
  theme_bw() +
  scale_y_continuous(labels = comma)

# グラフの描画
print(g)