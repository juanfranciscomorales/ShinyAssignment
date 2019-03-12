#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  data("iris")
  
  output$explot <- renderPlot({
    
    library(ggplot2)
    
    box <- ggplot(data=iris, aes_string(x= "Species" , y = input$variable )) +
    
      geom_boxplot(aes(fill=Species)) + 
    
      ylab(as.character(input$variable)) + 
      
      ggtitle("Iris Boxplot")
    
    box
    
  })
  
})
