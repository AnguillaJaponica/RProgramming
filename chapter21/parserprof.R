library(profr)
# プロファイリング結果のパース・可視化
plot(parse_rprof("cars.lm.out"), main = "Profile of lm()")