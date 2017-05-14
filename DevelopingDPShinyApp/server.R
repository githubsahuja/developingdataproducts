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
  
  # define the model 
  fit <- lm(sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)

  # define reactive predict method
  modelpred <- reactive({
    
    inputData <- data.frame(pop15 = input$pop15, pop75 = input$pop75, dpi = input$dpi, ddpi = input$ddpi)
    predict(fit, newdata = inputData)
    
  })  

  # create a barplot to show the data and include the predicted value on the plot
  output$plot1 <- renderPlot({

    dfLifeCycleSavings = data.frame(LifeCycleSavings)
    # add column for country and use the row name to define its contents
    dfLifeCycleSavings$Country <- row.names(dfLifeCycleSavings)
    
    # generate a new row for the predicted value along with the predictors defined by user
    # name the country as PREDICTED
    predictedRow = data.frame(sr = modelpred(), pop15 = input$pop15, pop75 = input$pop75, 
                        dpi = input$dpi, ddpi=input$ddpi, Country = "PREDICTED")
    
    # bind the predicted row with rest of the data
    dfLifeCycleSavings = rbind(predictedRow, dfLifeCycleSavings)
    
    # color of predicted bin as orange
    mycol <- c("orange")
    # color of rest of the bins
    mycol[2:51] <- c("blue")
    
    # adjust the margins for better viewing
    par(mar=c(6, 4, 4, 2) + 0.1)
    barplot(dfLifeCycleSavings$sr, names.arg = dfLifeCycleSavings$Country, 
                          main="Aggregate Personal Savings", ylab="Aggregate Personal Savings", 
                          las = 2, col = mycol)
  })
  
  # set the output value - predicted aggregate personal saving
  output$predictedValue <- renderText({
    modelpred()
  })

})
