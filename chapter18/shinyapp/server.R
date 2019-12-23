shinyServer(function(input, output) {

  output$main_plot <- renderPlot({
    if (input$distribution_name == '正規分布') {
      x <- seq(-5, 5, length.out = 1000)
      plot(x = x, y = dnorm(x, mean = input$mean, sd = input$sd), xlab = "x", ylab = "Density")
    } else if(input$distribution_name == 'カイ二乗分布') {
      x <- seq(0, 10, length.out = 1000)
      plot(x = x, y = dchisq(x, df = input$df2), xlab = "x", ylab = "Density")
    } else if(input$distribution_name == 'ポアソン分布') {
      x <- 0:15
      p <- dpois(x, lambda = input$df3)
      plot(x, p, type = 'h', xlab = "x", ylab = "Probability Mass")
      points(x, p, pch = 16)
    } else if(input$distribution_name == '二項分布') {
      x <- 0:15
      p <- dbinom(x, size = input$size, prob = input$prob)
      plot(x, p, type = 'h', xlab = "Number of Successes", ylab = "Probability Mass")
      points(x, p, pch = 16)
    }

  })
})