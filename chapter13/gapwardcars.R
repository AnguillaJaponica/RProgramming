# ギャップ統計量のプロット
gap <- gap.ward.cars$Tab %>%
         as.data.frame %>%
         mutate(k = seq(k.max))
p <- ggplot(data = gap, aes(x = k, y = gap)) +
       geom_line() +
       geom_point() +
       scale_x_discrete()
print(p)