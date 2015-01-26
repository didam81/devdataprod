library(shiny)
library(datasets)

shinyUI(pageWithSidebar(

  headerPanel("Weights of Chickens based on Feed"),

  sidebarPanel(

        selectInput("feed","Feed Type:",
             c('casein', 'horsebean', 'linseed','meatmeal','soybean','sunflower')),


        helpText("Select a feed type to see distribution of chicken weights")
  ),

  mainPanel(
    plotOutput('chickPlot')
  )
))
