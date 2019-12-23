library(ggplot2)
# デンドログラムの設定
dend2 <- dend %>%
           set("labels_cex", 0.5) %>%
           hang.dendrogram(hang_height=0.8) %>%
           set("branches_k_color", value=c("red", "blue", "green"), k=3) %>%
           set("branches_lwd", 0.5) %>%
           set("branches_lty", 1) %>%
           set("nodes_pch", 19) %>%
           set("nodes_cex", 1) %>%
           set("nodes_col", "black")
# ggplot2パッケージで描画可能なオブジェクトへの変換
ggd <- as.ggdend(dend2)
# ggplot2パッケージでの描画
ggplot(ggd, offset_labels = -0.1)