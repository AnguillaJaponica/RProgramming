# データの加工
ukgas <- data.frame(
  x = as.vector(time(UKgas))[1:10],
  y = as.vector(UKgas)[1:10]
)

# グラフの作成
g <- ggplot(ukgas, aes(x = x, y = y)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = y), vjust = -0.2)

# グラフの描画
print(g)