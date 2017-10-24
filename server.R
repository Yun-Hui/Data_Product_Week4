# You can find out more about this app here:https://github.com/Yun-Hui/Data_Product_Week4


library(plotly)
##df<-readRDS("healthdata.rds")
##df$Life_Expenctancy<-round(df$Life_Expenctancy,digit=2)

shinyServer(function(input, output) {
  

    output$text<-renderText({
      paste("Life Expentancy and ",input$conl," in the year of ",input$slider1)
    })
    
    output$plot1<-renderPlotly({
      
       var<-reactive({c("Country","Year","Life_Expenctancy","Population","Continent",input$conl)})
       ndf<-df[var()]
       colnames(ndf)<-c("Country","Year","Life_Expenctancy","Population","Continent","X")
       
      df2<-reactive({subset(ndf,Year==input$slider1)})
       
      xvar<-reactive({input$conl})
      
      plot_ly(df2(), x = ~X,y = ~Life_Expenctancy, type = 'scatter', mode = 'markers', size = ~Population,color = ~Continent,colors = 'Paired',
                   #Choosing the range of the bubbles' sizes:
                   sizes = c(10, 50),
                   marker = list(opacity = 0.5, sizemode = 'diameter'),
                   hoverinfo = 'text',
                   text = ~paste('Country:', Country, '<br>Life Expenctancy:', Life_Expenctancy)) %>%
        layout(title = ' ',
               xaxis = list(title=xvar(),showgrid = TRUE),
               yaxis = list(title="Life Expenctancy",showgrid = TRUE),
               showlegend = TRUE) 
       
      })
})



