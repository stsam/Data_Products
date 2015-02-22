# Data_Products
### Assignment: Your Shiny Application

##### Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application. Deploy the application on Rstudio's shiny server. Share the application link by pasting it into the text box below. Share your server.R and ui.R code on github. 
##### The application must include the following: 
* Some form of input (widget: textbox, radio button, checkbox, ...).
* Some operation on the ui input in sever.R. Some reactive output displayed as a result of server calculations.
* You must also include enough documentation so that a novice user could use your application. The documentation should be at the Shiny website itself.
* Do not post to an external link.

### Executive Summary: 
##### The data from Sunspots data from the The R Datasets Package is analyzed and used to predict future sunspots. There are multiple sunspots data sets but for thsi analysis the sunspot.month data set was used as it had data from 1749 to present. This large amount of data was used to create prediction for the next 20 years. Steps taken for analysis are explained below:
* The data is loaded and the time series is modified to calculate the total sunspots in an year.The data is shown in a plot to see how the data looks like.
* The Yearly data from 1749 to present is modelled using ARIMA Modelling of Time Series model.
* This model is than used to forecast the expected number of Sunspots for till 2035

###Instructions:
#####The data for the Sunspots is available in the base package of R. No additional packages are needed. The data was on month basis and has been summed to years.Then the forecast function is used to predict for the next 20 years. The user needs to input a future year from 2015 to 2035 to see the predicted rounded total number of expected Sunspots. The widget a slider for the plot is animated and has a line showing different years.
