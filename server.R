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

    my_docomentation <- " Hello There, this shiny application 
                            will let you create your own normal distribution.
                        You can pick data_points, "
    output$docomentation <- renderText(my_docomentation)
    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        #x    <- faithful[, 2]
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white')
        
        norm_data <- rnorm(input$dist_data, input$dist_mean, input$dist_std)
        
        hist(norm_data, col = 'darkgray', border = 'white', xlab = "Value", main = "Normal Distribution" )
        if(input$show_mean_line)
            abline(v=input$dist_mean,col="red", lwd = 10)

    })

})
