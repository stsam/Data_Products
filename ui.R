library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Total sunspots per year"),
    
    sidebarPanel(
      sliderInput('Yr', 'Year', value=1900, min=1749,max=2014, sep="",step=5, animate=TRUE),
      h3('Prediction of sunspots from 2015 to 2035'),
      numericInput('PYr', label = h4("Year(2015 and 2035)"), 2015, min=2015, max=2035)
      ),
    mainPanel(
      plotOutput('nplot'),
      h3('Predicted number of sunspots are'),
      strong(verbatimTextOutput("PredValue")),
      h4("Instructions: The data for the Sunspots is available in the base package of R.
No additional packages are needed. The data was on month basis and has been summed to years. 
Then the forecast function is used to predict for the next 20 years. 
The user needs to input a future year from 2015 to 2035 to see the predicted rounded total number of expected Sunspots.
The widget for the plot is animated and has a line showing different years.")
    )
  )
)