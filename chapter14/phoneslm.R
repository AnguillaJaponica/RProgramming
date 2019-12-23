# phonesデータセットの回帰直線のプロット
p <- ggplot(phones %>% as.data.frame, aes(x = year, y = calls)) + 
         stat_smooth(method = "lm") + geom_point()
print(p)