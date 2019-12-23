# クラスタを長方形で囲む
dend %>%
     set("labels_cex", 0.5) %>%
     hang.dendrogram(hang_height=0.8) %>%
     set("branches_k_color", value=c("red", "blue", "green"), k=3) %>%
     plot
dend %>%
     rect.dendrogram(k=3, border=8, lty=2, lwd=1)