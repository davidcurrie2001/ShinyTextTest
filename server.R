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
    
    myDF <- NULL

    # Read the correct file    
    if (input$file == "Introduction"){
      myDF <- read.csv("filesToRead/Introduction.csv",stringsAsFactors = FALSE)
    } else if (input$file == "ICES New-old"){
      myDF <- read.csv("filesToRead/ICES-New-Old - extra species.csv",stringsAsFactors = FALSE)
    } else if (input$file == "IntroductionTable"){
      myDF <- read.csv("filesToRead/IntroductionTable.csv",stringsAsFactors = FALSE)
    } else if (input$file == "KeyPoints"){
      myDF <- read.csv("filesToRead/KeyPoints.csv",stringsAsFactors = FALSE)
    } else if (input$file == "ManagementAdvice"){
      myDF <- read.csv("filesToRead/ManagementAdvice.csv",stringsAsFactors = FALSE)
    } else if (input$file == "MixedFish"){
      myDF <- read.csv("filesToRead/MixedFish.csv",stringsAsFactors = FALSE)
    }
    
    outputText <- ""
    
    if(!is.null(myDF)){
    
      # Stick all the text from the file together
      for (myCol in colnames(myDF)){
        
        outputText <- paste(outputText, paste(myDF[,myCol], sep ="<br/>"))
        
      }
      
    }
    
    # Show the text on screen
    outputText
    
  })
  

  

  
})
