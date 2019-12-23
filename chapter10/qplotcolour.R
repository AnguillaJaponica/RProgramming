# 散布図 (色分け)
#   x: カラット (連続値)
#   y: 価格 [USドル] (連続値)

qplot(
  carat,
  price,
  colour = cut,
  data = diamonds,
  main ="カットの評価別ダイヤモンドのカラットと価格の関係",
  xlab="カラット",
  ylab="価格 [$]"
  )