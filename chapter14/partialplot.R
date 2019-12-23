# 目的変数に対するtotal_day_minutesの寄与の確認
layout(matrix(1:2, 2))
partialPlot(model.rf, churnTrain, total_day_minutes, "yes")
partialPlot(model.rf, churnTrain, total_day_minutes, "no")