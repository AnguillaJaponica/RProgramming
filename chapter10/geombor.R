# 棒グラフ
#   x: カットの評価 (離散値)
#   y: 個数 [個] (連続値)

qplot(
  cut,
  data = diamonds,
  geom = "bar",
  main = "カットの評価と個数の関係",
  xlab = "評価",
  ylab = "個数 [個]"
  )