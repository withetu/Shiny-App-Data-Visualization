#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


##https://www.analyticsvidhya.com/blog/2016/10/creating-interactive-data-visualization-using-shiny-app-in-r-with-examples/


library(shiny)

#Writing server function
shinyServer(function(input, output){
  
#reffering output distPlot in ui.r as output$distPlot
  output$distPlot <- renderPlot({
    
#reffering input p in ui.r as input$p
    if(input$p=='a'){
      i<-1
    }
    
    if(input$p=='b'){
      i<-2
    }
    
    if(input$p=='c'){
      i<-3
    }
    
    if(input$p=='d'){
      i<-4
    }
    
    x<-iris[,i]
    
#reffering input bins in ui.r as input$bins
    bins<-seq(min(x), max(x), length.out = input$bins+1)
    
#producing histogram as output
    hist(x, breaks = bins, col='seagreen2', border = 'royalblue4')
    
  })
  
})

rsconnect::setAccountInfo(name='thinkanalyst',
                          token='42DEF75FE2128B32A7956183FB43CDBF',
                          secret='2ca1ujzsukJk1zOPZ42q180pY+Y/mePpulacHshx')
library(rsconnect)
rsconnect::deployApp('C:\\Users\\user\Documents\\GitHub\\Shiny-App-Data-Visualization\\rsconnect\\shinyapps.io\\thinkanalyst')


