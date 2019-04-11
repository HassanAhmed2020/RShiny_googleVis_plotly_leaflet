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
    titlePanel("Normal Distribution"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("dist_data",
                        "Number of bins:",
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
                        step = 1)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
