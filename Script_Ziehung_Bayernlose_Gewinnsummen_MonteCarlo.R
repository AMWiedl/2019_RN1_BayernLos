#Lospool definieren inkl. 0
LosPool<-c(0,2,4,10,20,100,1000,10000,300000)

#Wahrscheinlichkeiten für jedes Los definieren
ProbLose_ohne0<-c((1/5.88),(1/20),(1/50),(1/200),(1/1000),(1/100000),(1/1666666.67),(1/5000000))
GesamtSofortGewProb<-(sum(ProbLose))
ProbLose_mit0<-c((1-GesamtSofortGewProb),(1/5.88),(1/20),(1/50),(1/200),(1/1000),(1/100000),(1/1666666.67),(1/5000000))

#Anzahl Lose je Ziehung definieren
Lose<-1000
#Anzahl Ziehungen definieren
Ziehungen<-100000
#Ziehungen durchführen und Gewinnsumme je Ziehung ermitteln

