# 密度曲線
#   x: 価格 [USドル] (連続値)
#   y: 確率 (連続値)

qplot(
  price,
  data = diamonds,
  geom = "density",
  main = "ダイヤモンドの価格と個数の関係",
  xlab = "価格 [$]",
  ylab = "確率"
  )