library(shiny)

# Define server logic required to generate and plot (histogram) of median price data.
# define distribution and plot it
shinyServer(function(input, output) {
      output$distPlot <- renderPlot({
            setwd("C://Users//bmerr//Documents//eLearning//Data Science//Johns Hopkins//Course 9 Developing Data Products//Course 9 Working Directory")
            US_info <- read.csv("US_info.csv")
            dist <- US_info$Median_Price_k_2023
            bins <- seq(min(dist),max(dist),length.out = input$bins +1)
            hist(dist,breaks=bins,
                 main = "Histogram of 2023 U.S. State Median Home Sales Price",
                 xlab = "Median Price Intervals",
                 ylab = "Frequency",
                 xlim = c(200,max(dist)),
                 col = "salmon",
                 border = "white" )
      })
})

# Expression that generates a plot of the distribution. The expression
# is wrapped in a call to renderPlot to indicate that:
#
#  1) The application is "reactive" and automatically re-executes when 
#     the input from the slider changes.
#  2) The output type is a plot of a histogram. 
#