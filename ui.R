#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny text test"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("file",
                   "Choose a file:",
                   c("None","Introduction","ICES New-old", "IntroductionTable", "KeyPoints","ManagementAdvice","MixedFish"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       htmlOutput("myText")
    )
  )
))
