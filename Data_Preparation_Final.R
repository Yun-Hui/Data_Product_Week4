
install.packages("dplyr")
library(dplyr)
detach(df_combine)

df_lx<-read.csv("life-expectancy-vs-health-expenditure.csv")
df_lx<-df_lx[c(1:3,5)]
colnames(df_lx)<-c("Country","Country_Code","Year","Life_Expenctancy")
df_lx<-subset(df_lx,complete.cases(df_lx))

df_gdp<-read.csv("healthcare-expenditure-vs-gdp.csv")
df_gdp<-df_gdp[c(2:6)]
colnames(df_gdp)<-c("Country_Code","Year","GDP","Health_Expenditure","Population")
df_gdp<-subset(df_gdp,complete.cases(df_gdp))
df_combine<-merge(df_lx,df_gdp,by=c("Country_Code","Year"))

df_list<-read.csv("https://commondatastorage.googleapis.com/ckannet-storage/2012-07-26T090250/Countries-Continents-csv.csv")
df_list<-df_list[c(1:2)]

df_combine<-merge(df_combine,df_list,by=c("Country"))

df_combine$ratio<-df_combine$Health_Expenditure/df_combine$GDP
var<-c("Country","Country_Code","Year", "Life_Expenctancy","GDP per Capital","Health Expenditure per Capital","Population", "Continent", "Health Expenditure to GDP ratio" )
colnames(df_combine)<-var

saveRDS(df_combine, "healthdata.rds")

