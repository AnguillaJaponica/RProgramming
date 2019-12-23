# 散布図
#   x: カラット (連続値)
#   y: 価格 [USドル] (連続値)

qplot(
  carat,
  price,
  data = diamonds,
  main ="ダイヤモンドのカラットと価格の関係",
  xlab="カラット",
  ylab="価格 [$]"
  )