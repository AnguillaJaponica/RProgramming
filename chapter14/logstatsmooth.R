p <- ggplot(data = cars, aes(x = speed, y = dist)) + stat_smooth(method = "lm") + 
         geom_point() + scale_x_log10() + scale_y_log10()
print(p)