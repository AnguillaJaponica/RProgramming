# stan実行
library(rstan)
options(mc.cores = parallel::detectCores())
y <- c(0, 1, 0, 0, 0, 0, 0, 0, 0, 1)
data <- list(N = length(y), y = y)
fit <- stan("./chapter23(kos)/bernoulli.stan", data = data)

# ggmcmcパッケージをロードする
library(ggmcmc)

# トレースプロット
ggs(fit) %>% ggs_traceplot