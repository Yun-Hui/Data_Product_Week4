df<-readRDS("healthdata.rds")
df$Life_Expenctancy<-round(df$Life_Expenctancy,digit=2)