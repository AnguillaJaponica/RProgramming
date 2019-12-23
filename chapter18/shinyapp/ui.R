shinyUI(bootstrapPage(

  selectInput(inputId = "distribution_name",
              label = "描きたい分布:",
              choices = c('正規分布', 'カイ二乗分布', '-----', 'ポアソン分布', '二項分布'),
              selected = '正規分布'),

  plotOutput(outputId = "main_plot", height = "300px"),

  conditionalPanel(condition = "input.distribution_name == '正規分布'",
                   sliderInput(inputId = "mean",
                               label = "平均:",
                               min = -5, max = 5, value = 0, step = 1),
                   sliderInput(inputId = "sd",
                               label = "分散:",
                               min = 0.1, max = 3, value = 1, step = 0.1)
  ),
  conditionalPanel(condition = "input.distribution_name == 'カイ二乗分布'",
                   sliderInput(inputId = "df2",
                               label = "自由度",
                               min = 1, max = 30, value = 2, step = 1)
  ),
  conditionalPanel(condition = "input.distribution_name == 'ポアソン分布'",
                   sliderInput(inputId = "df3",
                               label = "平均",
                               min = 1, max = 15, value = 2, step = 1)
  ),
  conditionalPanel(condition = "input.distribution_name == '二項分布'",
                   sliderInput(inputId = "size",
                               label = "試行回数:",
                               min = 1, max = 10, value = 2, step = 1),
                   sliderInput(inputId = "prob",
                               label = "成功確率:",
                               min = 0.1, max = 1.0, value = 0.5, step = 0.1)
  )
))