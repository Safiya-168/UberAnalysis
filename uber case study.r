
library(ggplot2 )
uberdata<-read.csv("C:\Users\840g3\OneDrive\Desktop\R case study\uber case study\Uber-Jan-Feb-FOIL.csv")
str(uberdata)
ls(uberdata)
View(uberdata)
as.factor(uberdata)
uberdata$active_vehicles
uberdata$trips
head(uberdata)
table(uberdata$trips)
min(uberdata$trips)
min(uberdata$active_vehicles)
max(uberdata$trips)
max(uberdata$active_vehicles)
library(dplyr)
#data%>%select.list(3,4)->data1
library(ggplot2)
#histogram
ggplot( data=uberdata,aes(x=trips))+geom_histogram(fill="purple",col="black")
ggplot( data=uberdata,aes(x=active_vehicles))+geom_histogram(col="yellow")
#barplot
ggplot( data = uberdata,aes(x=active_vehicles))+geom_bar(col="blue")
ggplot(data =  uberdata,aes(x=trips))+geom_bar(col="black")
#scatter plot  (plot between trips and active_vehicles)
ggplot(data = uberdata,aes(x=trips,y=active_vehicles,col=trips))+geom_point()
#boxplot
ggplot(data = uberdata,aes(x=date,y=active_vehicles,fill=date))+geom_boxplot()
ggplot(data=uberdata,aes(x=trips,y=active_vehicles))+geom_boxplot()

