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
    titlePanel("Create and visualize Your Normal Distribution"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("dist_data",
                        "Number of data points:",
                        min = 1,
                        max = 1000,
                        value = 100), 
            numericInput("dist_mean",
                        "Enter mean value:",
                        min = 1,
                        max = 100,
                        value = 10,
                        step = 1),
            numericInput("dist_std",
                        "Enter standard deviation:",
                        min = 1,
                        max = 100,
                        value = 10,
                        step = 1),
            checkboxInput("show_mean_line",
                          "Show/Hide Mean Line",
                          value = FALSE)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Your Chart", br(), plotOutput("distPlot")),
                        tabPanel("Documentation", br(), textOutput("docomentation"))
                        
                        )
            
            #plotOutput("distPlot")
        )
    )
))
