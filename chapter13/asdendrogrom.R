library(dendextend)
library(dplyr)
# Ward法によるcarsデータセットのクラスタリング
dend <- cars %>%
             scale %>%
             dist %>%
             hclust(method="ward.D2") %>%
             as.dendrogram
# デンドログラムのプロット
dend %>% plot