#Lospool definieren mit 0


#Wahrscheinlichkeiten für jedes Los definieren

#Anzahl Lose je Ziehung definieren

#Anzahl Ziehungen definieren

#Ziehungen durchführen und Gewinnsumme je Ziehung ermitteln

Ziehungen<-replicate(100000,{X<-sample(LosPool,size=1000,replace=TRUE,prob=ProbLose)})
