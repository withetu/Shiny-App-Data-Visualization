#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


##https://www.analyticsvidhya.com/blog/2016/10/creating-interactive-data-visualization-using-shiny-app-in-r-with-examples/
install.packages("rsconnect")
library(rsconnect)
if(!require(shiny)){
  install.packages("shiny")
}

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
#fluid page for dynamically adapting to screens of different resolutions.
  titlePanel("Iris Dataset"),
  sidebarLayout(
    sidebarPanel(
      #implementing radio buttons
      radioButtons("p", "Select column of iris dataset:", list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
      
      #slider input for bins of histogram
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      
      #Show a plot of the generated distribution
    ),
    mainPanel(
      plotOutput("distPlot")
    )
      
    )
  )
)
