#ggplot & dplyr verfügbar machen über tidyverse
library(tidyverse)

#Lospool definieren inkl. 0
LosPool<-c(0,2,4,10,20,100,1000,10000,300000)

#Wahrscheinlichkeiten für jedes Los definieren
ProbLose_ohne0<-c((1/5.88),(1/20),(1/50),(1/200),(1/1000),(1/100000),(1/1666666.67),(1/5000000))
GesamtSofortGewProb<-(sum(ProbLose_ohne0))
ProbLose_mit0<-c((1-GesamtSofortGewProb),(1/5.88),(1/20),(1/50),(1/200),(1/1000),(1/100000),(1/1666666.67),(1/5000000))

#Anzahl Lose je Ziehung definieren
Lose<-1000

#Anzahl Ziehungen definieren
nZiehungen<-500000

#Start festlegen für Reproduzierbarkeit der Ergebnisse
set.seed(1)

#Ziehungen durchführen und Gewinnsumme je Ziehung ermitteln
MonteCarloSim<-replicate(nZiehungen,
  {
  X<-sample(LosPool,Lose,prob = ProbLose_mit0,replace = TRUE)
  Gewinnsumme<-sum(X)
  }
  )

DFMonteCarloSim<-data.frame(Gewinn=as.numeric(MonteCarloSim))
ggplot(DFMonteCarloSim,aes(x=Gewinn))+geom_histogram(binwidth = 0.005)+scale_x_continuous(trans="log10")+scale_y_continuous(trans="log10")

#Mittelwert, etc. berechnen
mean(MonteCarloSim)
sd(MonteCarloSim)
max(MonteCarloSim)
min(MonteCarloSim)
