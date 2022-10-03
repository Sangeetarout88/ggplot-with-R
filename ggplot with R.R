#Ans1. 

library(readr)
summary(EconomistData)
setwd('/Users/sangeetarout/documents/R')
EconomistData <- read_csv("EconomistData.csv")
print('EconomistData')

#Excercise 1

library("tidyverse")
library(ggplot2)
ggplot(EconomistData)
glimpse(EconomistData)
#1
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()
#2
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point(color="purple")
#3
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point()
#4
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point(size=2)
#5
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point(size=EconomistData$HDI.Rank)
#Excercise 2
#1
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()
#2
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()+
  geom_smooth()
#3
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()+
  geom_smooth(method="lm")
#4
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()+
  geom_smooth(method = "lm")+
  geom_line(method="loess")
#5
ggplot(EconomistData,aes(x=CPI,y=HDI))+
  geom_point()+
  geom_smooth(method = "lm")+
  geom_line(method="loess")
#Excercise 3
#1
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point()
#2
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point()+
  scale_x_continuous(name="Corruption Perception Index")+
  scale_y_continuous(name="Human Development Index")
#3
ggplot(EconomistData,aes(x=CPI,y=HDI,color=Region))+
  geom_point()+
  scale_x_continuous(name="Corruption Perception Index")+
  scale_y_continuous(name="Human Development Index")+
  scale_color_manual(name="Region of the World",
                     values =c(
                       "#24576D",
                       "#099DD7",
                       "#28AADC",
                       "#248E84",
                       "#F2583F",
                       "#96503F"))
#Saving the workspace

