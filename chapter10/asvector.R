# 時系列型 (time series) を通常のベクトルに変換
x = as.vector(time(UKgas))
y = as.vector(UKgas)

# 折れ線グラフ
qplot(
  x,
  y,
  geom = "line",
  main = "イギリスの4半期毎ガス消費量",
  xlab = "年",
  ylab = "消費量"
  )