library(shiny)
library(datasets)
data(mtcars)

# Explores relationship between MPG and input variable
shinyServer(function(input, output) {
  
  # Prints out the input variable
  # Creates a plot out of MPG vs the input variable
  
  output$variable <- renderPrint({input$variable}) 
  output$myplot <- renderPlot({    
    plot(mtcars[, input$variable], mtcars$mpg,
         main = paste("Plot of MPG vs", input$variable),
         xlab = input$variable,
         ylab = "Miles per Gallon",
         pch=16,
         col = "blue")    
    })
  }
)
