# ARモデルに従う時系列データの自己相関のプロット
layout(matrix(1:4, 2, 2, byrow = TRUE))
acf(ar.0.9)
acf(ar.0.5)
acf(ar.m0.5)
acf(ar.m0.9)