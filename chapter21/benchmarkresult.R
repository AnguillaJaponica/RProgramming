# 100,000個の一様乱数を2乗する処理について2通りの方法で実行時間を計測
benchmark_result <- microbenchmark(
                      { res1 <- x^2 },
                      { res2 <- numeric(100000); for (i in 1:100000) res2[i] <- x[i]^2 }
                    )
# 箱ひげ図にプロットして比較
plot(benchmark_result)