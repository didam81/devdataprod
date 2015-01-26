library(shiny)
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$chickPlot <- renderPlot({
    
    # Render a barplot
    hist(chickwts[chickwts$feed == input$feed,]$weight,
            main = "Histogram of Chicken Weights", 
            xlab="Weights")
  })
})