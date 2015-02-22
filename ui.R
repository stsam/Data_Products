library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Total sunspots per year"),
    
    sidebarPanel(
      sliderInput('Yr', 'Year', value=2000, min=1749,max=2014, sep="",step=5,animate=TRUE),
      h3('Prediction of sunspots from 2015 to 2024'),
      numericInput('PYr', label = h4("Year(2013 and 2032)"), 2014, min=2013, max=2032)
      ),
    mainPanel(
      plotOutput('nplot'),
      h3('Predicted number of sunspots are'),
      strong(verbatimTextOutput("PredValue")),
      h4("The data for the suspots is available in the base package of R. The data was on month basis and has been summed to years. Then the forecast function is used to predict for the next 20 years.")
    )
  )
)