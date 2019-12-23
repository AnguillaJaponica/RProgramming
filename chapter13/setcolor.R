# クラスタごとの色の塗り分け
dend %>%
     set("labels_cex", 0.5) %>%
     hang.dendrogram(hang_height=0.8) %>%
     set("branches_k_color", value=c("red", "blue", "green"), k=3) %>%
     plot