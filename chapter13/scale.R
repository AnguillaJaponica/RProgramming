# データの正規化
Boston.mat.scaled <- scale(Boston.mat)
# ヒートマップのプロット
heatmap(Boston.mat.scaled)