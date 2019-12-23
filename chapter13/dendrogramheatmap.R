library(dendextend)
library(MASS)
data(Boston)
# Bostonデータセットの行列への変換
Boston.mat <- Boston %>% as.matrix
# 行方向のデンドログラムの設定
Rowv <- Boston.mat %>%
          scale %>%
          dist %>%
          hclust(method="ward.D2") %>%
          as.dendrogram %>%
          set("branches_k_color", k=3) %>%
          set("branches_lwd", 2) %>%
          ladderize
# 列方向のデンドログラムの設定
Colv <- Boston.mat %>%
          t %>%
          scale %>%
          dist %>%
          hclust(method="ward.D2") %>%
          as.dendrogram %>%
          set("branches_k_color", k=2) %>%
          set("branches_lwd", 2) %>%
          ladderize
# ヒートマップのプロット
heatmap.2(Boston.mat, Rowv=Rowv, Colv=Colv, scale="column")