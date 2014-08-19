library(shiny)

# Define UI for dataset viewer application
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Iris Random Forests Prediction"),
                
                sidebarPanel(
                        #numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5),
                        numericInput('sepal.length','Sepal.Length',5,min=2,max=10,step=0.1),
                        numericInput('sepal.width','Sepal.Width',5,min=1,max=6,step=0.1),
                        numericInput('petal.length','Petal.Length',5,min=0,max=8,step=0.1),
                        numericInput('petal.width','Petal.Width',5,min=0,max=3,step=0.1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('You entered Sepal Length'),
                        verbatimTextOutput("inputValue1"),
                        h4('and Sepal Width'),
                        verbatimTextOutput("inputValue2"),
                        h4('and Petal Length'),
                        verbatimTextOutput("inputValue3"),
                        h4('and Petal Length'),
                        verbatimTextOutput("inputValue4"),
                        
                        h4('Which resulted in a Species prediction of '),
                        verbatimTextOutput("prediction")
                )
        )
)

