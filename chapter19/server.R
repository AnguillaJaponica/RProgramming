# server.R
library(shiny)
library(ggplot2)
library(scales)

shinyServer(function(input, output) {
   set.seed(122)

   sales_data <- data.frame(
      Month = seq(as.Date("2014-04-01"), length.out = 20, by = "1 month"),
      Sales = rnorm(20, 150, sd = 30)
   )

   output$graph <- renderPlot({
      g <- ggplot(sales_data, aes(x = Month, y = Sales)) +
         geom_line() +
         scale_x_date(
            labels = date_format("%Y-%m"),
            breaks = date_breaks("3 months")
         ) +
         xlab("月") +
         ylab("売上")
      print(g)
   })

   output$table <- DT::renderDataTable(sales_data)

   output$download <- downloadHandler(
      filename = "sales_data.csv",
      content = function(file) {
         write.csv(sales_data, file, row.names = FALSE)
      }
   )
})