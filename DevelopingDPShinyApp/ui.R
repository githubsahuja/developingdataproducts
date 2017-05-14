#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that fits a model based on the LifeCycleSavings data
# and predicts the aggregate personal savings based on inputs for the 4 predictors
shinyUI(fluidPage(
  
  # Application title
  titlePanel(HTML("Predict Aggregate Personal Savings <br>Based on derived model from Life-Cycle Savings Data")),

  # Sidebar with sliders for the 4 predictors 
  sidebarLayout(
    sidebarPanel(
      sliderInput("pop15", "% Of Population under 15?", 0, 50, value = 29),
      sliderInput("pop75", "% Of Population over 75?", 0, 25, value = 3),
      sliderInput("dpi", "Real Per-Capita Disposable Income?", 0, 5000, value = 2330),
      sliderInput("ddpi", "% Growth Rate of Disposable Income?", 0, 25, value = 3), 
      hr(),
      h4("How to use the application?"),
      h5(HTML("<ul><li>Run the application in <b>full screen</b>.</li>
              <li>Select values for the 4 predictors above.</li>
              <li>See the impact of change on predicted value, 
              <br>the first bin (orange) of the bar plot.</li></ul>"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted Aggregate Personal Savings:"),
      textOutput("predictedValue"),
      tags$head(tags$style("#predictedValue{color: orange;
                                 font-style: italic; font-weight: bold;
                                 }")),
      h5("Shown on the bar plot as first bin (orange color), so that you can compare it to other countries")
    )
  )
))
