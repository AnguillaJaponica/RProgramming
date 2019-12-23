p <- ggplot(data=cars, aes(x=speed, y=dist)) + geom_point() + scale_x_log10() + scale_y_log10()
print(p)