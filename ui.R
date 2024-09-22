library(shiny)
# Define UI for application that plots histogram of median price distributions 
shinyUI(fluidPage(titlePanel("2023 U.S. State Median Home Sales Price"),
      sidebarLayout(
            sidebarPanel(
            sliderInput("bins", 
                        "Number of Bins/Intervals:", 
                        min = 3, 
                        max = 50, 
                        value = 30,
                        step = 1)    
      ),
      mainPanel(
            plotOutput("distPlot")
      ))))
      
   
