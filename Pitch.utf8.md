---
title: "Data Product Pitch"
author: "Yunhui Wang"
date: "October 18, 2017"
output:
  beamer_presentation: default
  ioslides_presentation: default
  slidy_presentation: default
---


## Overview of the app
- Shiny App: Health Expenditure,GDP and Life Expectancy
- It contains 
  1. A panel bar with two filters: one for year, and the other for different dimensions 
  2. A Plot that shows the relationship between life expenctancy and health expditure,GDP and health expenditure to GDP ratio


## Objective

The app is inspried by a google charts demo app in Shiny gallary. The demo app explores the relatipnship between health expenditure and life expenctancy across different countries. This app further explores how Health Expenditure, GDP, ration between the two impacts life expenctancy. 

- Add GDP and helath care expendiure as a percentage of GDP to the graph
- Allow users to select three metrics that might impact life expenctancy 
- Develop a similar graph using plotly package

Google Charts Demo:https://shiny.rstudio.com/gallery/google-charts.html

## Details about the data:

- Data Source: https://ourworldindata.org/life-expectancy/
- Both GDP and Health Expenditure is measured with international dollors
- The available year is between 1995 and 2013

## Details about the app
See the R Codes here:
https://github.com/Yun-Hui/Data_Product_Week4



