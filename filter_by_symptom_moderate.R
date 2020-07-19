#Filtro por sintomas
library(xlsx)
#datos<-read.xlsx(file.choose(),sheetName = "Sheet1")
datos<-read.csv(file.choose(), sep=";")
datos$ï..ESTEVEALS<-as.character(datos$ï..ESTEVEALS)
datos$Fenotipo<-as.character(datos$Fenotipo)
sintomas<-unique(datos$Fenotipo)
#Separacion por sintomas
Espinal<- subset(datos, Fenotipo == "Espinal" | Fenotipo == "Espinal " | 
                   Fenotipo == "Espinl" | Fenotipo == "Eapinal")[,1]
Bulbar<-subset(datos, Fenotipo == "Bulbar")[,1]
Respiratorio  <-subset(datos, Fenotipo == "Respiratorio")[,1]
Monomielico<-subset(datos, Fenotipo == "MonomiÃ©lico")[,1]
amnesia<-subset(datos, Fenotipo == "amnesia")[,1]
pseudopolineuritica<-subset(datos, Fenotipo == "pseudopolineuritica")[,1]
PBP<-subset(datos, Fenotipo == "PBP")[,1]
ELP<-subset(datos, Fenotipo == "ELP" | Fenotipo == "Esclerosis Lateral Primaria (ELP)")[,1]
Flail_leg<-subset(datos, Fenotipo == "Flail leg")[,1]
Control<-subset(datos, Fenotipo == "Control")[,1]
Otro<-subset(datos, Fenotipo == "Otro")[,1]
AMP<-subset(datos, Fenotipo == "Atrofia Muscular Progresiva (AMP)")[,1]
Flail_arm<-subset(datos, Fenotipo == "Flail arm")[,1]
Hemiplejica_Mills_<-subset(datos, Fenotipo == "HemiplÃ©jica (Mills)")[,1]
Paralisis_bulbar_progresiva<-subset(datos, Fenotipo == "ParÃ¡lisis bulbar progresiva")[,1]
