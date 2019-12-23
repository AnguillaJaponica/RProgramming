library(pROC)
prob.label <- data.frame(prob = c(0.98, 0.95, 0.9, 0.87, 0.85, 0.8, 0.75,
    0.71, 0.63, 0.55, 0.51, 0.47, 0.43, 0.38, 0.35, 0.31, 0.28, 0.24, 0.22,
    0.19, 0.15, 0.12, 0.08, 0.04, 0.01), label = factor(c(1, 1, 0, 1, 0,
    0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0), levels = c(1,
    0)))
# ROC曲線のプロット
roc.curve <- roc(response = prob.label$label, predictor = prob.label$prob,
    levels = c(0, 1))
plot(roc.curve, legacy.axes = TRUE)

AUCを算出するauc関数には、roc関数により生成されたオブジェクトを指定します。

# AUCの算出
> auc(roc.curve)
Area under the curve: 0.6558