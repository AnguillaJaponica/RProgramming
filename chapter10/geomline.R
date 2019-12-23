# データフレームの作成
ukgas <- data.frame(
  x = as.vector(time(UKgas)),
  y = as.vector(UKgas)
  )

# 折れ線グラフの作成
g <- ggplot(ukgas, aes(x = x, y = y)) +
  geom_line()

# グラフの描画
print(g)