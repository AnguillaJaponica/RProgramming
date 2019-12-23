# ヒストグラム
#   x: 価格 [USドル] (離散値)
#   y: 個数 [個] (連続値)
#
#   binwidth = ヒストグラムの幅を指定

qplot(
  price,
  data = diamonds,
  geom = "histogram",
  binwidth = 1000,
  main = "ダイヤモンドの価格と個数の関係",
  xlab = "価格 [$]",
  ylab = "個数 [個]"
  )