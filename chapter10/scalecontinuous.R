# 目盛りの変更
#   x 軸: 1 => "a", 2 => "b", ... という目盛りに変更
#
# 上限の変更
#   y 軸: 0 〜 10000 の範囲に変更

g <- ggplot(data = diamonds) +
  geom_point(aes(carat, price)) +
  theme_bw() +
  scale_x_continuous(
    breaks = seq(1, 5, by = 1),
    labels = c("a", "b", "c", "d", "e")
  ) +
  ylim(0, 10000)

# グラフの描画
print(g)