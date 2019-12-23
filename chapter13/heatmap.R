library(MASS)
library(dplyr)
# Bostonデータセットのロード
data(Boston)
# ヒートマップのプロット
Boston.mat <- Boston %>% as.matrix
heatmap(Boston.mat)