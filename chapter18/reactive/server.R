library(shiny)
library(ggplot2)
data(iris)

shinyServer(function(input, output) {

  #入力パラメータが変わるたびに実行される
  dataInput <- reactive({
    iris_sel <- iris[sample(1:nrow(iris), input$n), ]
    return(iris_sel)
  })

  #ggplotの入力data.frameとして、上の関数dataInput()の戻り値を使う
  output$plot <- renderPlot({
    ggplot(dataInput(), aes(x = Sepal.Length, y = Petal.Length)) + geom_point(aes(colour = Species))
  })
})