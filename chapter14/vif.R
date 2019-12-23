library(tidyr)
library(ggplot2)
# 分散拡大要因の算出
vif <- 1/(1 - (Boston %>% dplyr:::select(-medv) %>% cor)^2)
# 縦長形式への変換
vif.l <- vif %>% as.data.frame %>% mutate(item1 = rownames(.)) %>% gather(item2, vif, -item1)
# 分散拡大要因のヒートマップのプロット
p <- ggplot(data = vif.l, aes(x = item1, y = item2, fill = vif)) +
       geom_tile() + geom_text(label = sprintf("%.2f", vif)) +
       scale_fill_gradient(low = "white", high = "red")
print(p)