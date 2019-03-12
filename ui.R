#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws the exploratory plots
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Edgar Anderson's Iris Data - Exploratory plots"),
  
  # Box to select the variable to plot against the species features
  sidebarLayout(
    sidebarPanel(
    selectInput("variable", 
                label = h3("Select a variable to plot against the Species feature:"), 
                choices = list("Sepal Length" = "Sepal.Length" , "Sepal Width"  = "Sepal.Width" , "Petal Length" ="Petal.Length" , "Petal Width" =  "Petal.Width" ), 
                selected = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("explot")
    )
  )
))
