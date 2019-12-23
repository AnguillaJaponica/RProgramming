GibbsR <- function(b, n, t){
    # 2変数標準正規分布からn点サンプリング
    # b : 2変数の共分散
    # n : サンプル数
    # t : サンプリングせず捨てる間隔

    X <- matrix(0, nrow = n, ncol = 2)
    x1 <- x2 <- 0
    sd <- sqrt(1-b^2)
    for(i in 1:n){
        for(j in 1:t){
            x1 <- rnorm(1, b*x2, sd)
            x2 <- rnorm(1, b*x1, sd)
        }
        X[i,1] <- x1
        X[i,2] <- x2
    }
    X
}