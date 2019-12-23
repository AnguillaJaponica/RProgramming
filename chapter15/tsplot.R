# 1974年から1979年までの英国における肺疾患による死亡者数(男女別)
ts.plot(deaths.ts, col = c("red", "blue"), lty = 1:2)
legend("topleft", legend = c("mdeaths", "fdeaths"), col = c("red", "blue"),
    lty = 1:2)