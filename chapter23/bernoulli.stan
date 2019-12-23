// データ定義
data {
    int<lower=0> N;
    int<lower=0, upper=1> y[N];
}
// パラメータ定義
parameters {
    real<lower=0, upper=1> theta;
}
// モデル記述
model {
    theta ~ beta(1,1);  // 事前分布
    y ~ bernoulli(theta);  // 尤度
}