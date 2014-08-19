library(shiny)

### Prediction using Random Forests
rfPred <- function(sepal.length,sepal.width,petal.length,petal.width) {
        df <- data.frame(Sepal.Length=sepal.length,Sepal.Width=sepal.width,Petal.Length=petal.length,Petal.Width=petal.width)
        data(iris)
        library(randomForest)
        iris.rf <- randomForest(Species~.,data=iris,importance=TRUE,proximity=TRUE) 
        pred.out <- as.character(predict(iris.rf,df))
        return(pred.out)
}

shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$sepal.length})
                output$inputValue2 <- renderPrint({input$sepal.width})
                output$inputValue3 <- renderPrint({input$petal.length})
                output$inputValue4 <- renderPrint({input$petal.width})
                output$prediction <- renderPrint({rfPred(input$sepal.length,input$sepal.width,input$petal.length,input$petal.width)})
        }
)
