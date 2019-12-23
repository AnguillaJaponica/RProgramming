# リーフの点の種類、文字の大きさ、色、ラベルの大きさの変更
dend %>%
     set("leaves_pch", 19) %>%
     set("leaves_cex", 0.5) %>%
     set("leaves_col", "blue") %>%
     set("labels_cex", 0.7) %>%
     plot