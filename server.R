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
   

  output$myText <- renderText({
    
    # Read the correct file    
    if (input$file == "Introduction"){
      myDF <- read.csv("Introduction.csv",stringsAsFactors = FALSE)
    }
    
    outputText <- ""
    
    
    # Stick all the text from the file together
    for (myCol in colnames(myDF)){
      
      outputText <- paste(outputText, paste(myDF[,myCol], sep ="<br/>"))
      
    }
    
    # Show the text on screen
    outputText
    
  })
  

  

  
})
