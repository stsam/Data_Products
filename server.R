library(shiny)
library(plyr)
library(forecast)
dt <- ts(sunspot.month, frequency=12, start=c(2000,1), end=c(2005,12))
Freq_data<-aggregate(sunspot.month, nfrequency = 1, FUN = sum)
Pred <- function(Freq_data){
  fit <- Arima(Freq_data, order=c(3,1,0))
  data <-forecast(fit, 20)
  return(data)
}  


# Define server logic required to draw a histogram
shinyServer(
  function(input, output) {
    data <- data.frame(Pred(Freq_data))
    output$inputValue <- renderPrint({input$PYr})
    output$PredValue <- renderPrint(round(data[as.character({input$PYr}), 1]))
    output$nplot <- renderPlot({
      plot (Freq_data,main="Sunspots per Year till 2014", xlab="Number of Sunspots",col=2)
      Yr <- ts(input$Yr)
      lines(c(Yr,Yr), c(0,max(Freq_data)), col="blue", lwd=2)
    })
}
)
