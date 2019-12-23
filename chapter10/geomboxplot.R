# 箱ひげ図
#   x: クラリティの評価 (離散値)
#   y: 個数 [個] (連続値)

qplot(
  clarity,
  price,
  data = diamonds,
  geom = "boxplot",
  main = "クラリティの評価と個数の関係",
  xlab = "評価",
  ylab = "個数 [個]"
  )