
library(shiny)
library(plotly)
##df<-readRDS("healthdata.rds")

shinyUI(fluidPage(
  

  titlePanel("GDP, Health Expenditure and Life Expectancy "),
  
  sidebarLayout(

    
    sidebarPanel(
      
      helpText("You can filter with Year and X dimension to see how life expectancy is impacted by income and health spend
                across different countries. X Dimension includes GDP, Health Expenditure and Health Expenditure as a percent of GDP. 
                Both GDP and Health Expenditure are measured in international dollars and as per capital.
               <br> Hoover to the country for more details "),
      numericInput("slider1", "Year",  min = min(df$Year), max = max(df$Year), value = min(df$Year))
      ,selectInput('conl', 'X Dimension',multiple=FALSE, choices=names(df)[c(5,6,9)],selected="Health Expenditure to GDP ratio")
      ),
      
        mainPanel(
       textOutput("text"),
       plotlyOutput("plot1")
       
      )
  )
))


  