library(party)
library(C50)
data(churn)
# 条件付き推測木の構築
model.ctree <- ctree(churn ~., data=churnTrain, controls=ctree_control(maxdepth=3))
# 条件付き推測木のプロット
plot(model.ctree)