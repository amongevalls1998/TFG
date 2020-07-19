library(xlsx)
imp<-read.xlsx("C:/Users/User/Desktop/TFG_ARI/FrecAfect_moderate.xlsx", sheetName = "Sheet1")
unique(imp$Gene_Name)
APOE<-subset(imp, Gene_Name == "APOE")
HFE<-subset(imp, Gene_Name == "HFE")
SYNE1<-subset(imp, Gene_Name == "SYNE1")
ALS2<-subset(imp, Gene_Name == "ALS2")
SETX<-subset(imp, Gene_Name == "SETX")
OPTN<-subset(imp, Gene_Name == "OPTN")
APOE<-subset(imp, Gene_Name == "APOE")
NEK1<-subset(imp, Gene_Name == "NEK1") #ENSG00000137601
SPG7<-subset(imp, Gene_Name == "SPG7")
SPG11<-subset(imp, Gene_Name == "SPG11")

#Hacer lo de las frecuencias
#SPINAL 127 PACIENTES
#APOE -- 127*0.1826(Affected_Fcarriers)

Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
APOE$variante<- paste(APOE$CHROM, APOE$POS, APOE$REF, APOE$ALT)
v1_apoe <- APOE$variante[1] #LA PRIMERA VARIANTE DE APOE

Bulbar_primera_variante_apoe <- subset(Bulbar_var, variante == v1_apoe)
# me ha salido 30 pacientes
######SPINAL
###APOE
##1a variant
#En tot el mon
#0.092*127 = 11.6persones son expected en el mon    - AF
#0.1826*127 = 23.19 persones de pacients que esperem que tinuin la mutacio  -Affected_FCarriers
#per mirar en el nostre sample
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
APOE$variante<- paste(APOE$CHROM, APOE$POS, APOE$REF, APOE$ALT)
v1_apoe <- APOE$variante[1] #LA PRIMERA VARIANTE DE APOE
#30 pacientes

##2a variant
#en tot el mon = 0.00188*127 = 0.23876
#pacients que esperem que tinuin la mutacio = 0.0043*127 = 0.54
#en el nostre sample -- 1 persona
v1_apoe <- APOE$variante[2]
Espinal_segona_variante_apoe <- subset(Espinal_var, variante == v1_apoe)

##3a variant
#en tot el mon = 0.05300*127 = 6.7
#0.1043*127 = 13.24
v1_apoe <- APOE$variante[3]
Espinal_tercera_variante_apoe <- subset(Espinal_var, variante == v1_apoe)
#13 persones

###HFE
##1a variant
#mon = 0.169000*127 = 21pacients
#0.3435*127 = 43pacients
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
HFE$variante<- paste(HFE$CHROM, HFE$POS, HFE$REF, HFE$ALT)
v1_HFE <- HFE$variante[1]
Espinal_primera_variante_HFE <- subset(Espinal_var, variante == v1_HFE)
#49 pacients
##2a variant
#0.003759*127 = 0.477
#0.0087*127 = 1.10
v1_HFE <- HFE$variante[2]
Espinal_segona_variante_HFE <- subset(Espinal_var, variante == v1_HFE)
#2pacients

##3a variant
#0.021000*127 = 2.66
#0.0391*127 = 4.9
v1_HFE <- HFE$variante[3]
Espinal_tercera_variante_HFE <- subset(Espinal_var, variante == v1_HFE)
#3obs

#4a variant
#0.001880*127 = 0.23876
#0.0043*127 = 0.5461
v1_HFE <- HFE$variante[4]
Espinal_quarta_variante_HFE <- subset(Espinal_var, variante == v1_HFE)
#1obs

###NEK1
##1a variant
#0.003759*127 = 0.477393
#0.0043*127 = 0.5461
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
NEK1$variante<- paste(NEK1$CHROM, NEK1$POS, NEK1$REF, NEK1$ALT)
v1_NEK1 <- NEK1$variante[1]
Espinal_primera_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#1obs

##2a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_NEK1 <- NEK1$variante[2]
Espinal_segona_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#1obs

##3a variant 
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_NEK1 <- NEK1$variante[3]
Espinal_tercera_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#1obs

##4a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_NEK1 <- NEK1$variante[4]
Espinal_quarta_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#2obs

##5a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_NEK1 <- NEK1$variante[5]
Espinal_quinta_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#1obs

##6a variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_NEK1 <- NEK1$variante[6]
Espinal_sexta_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#4obs

##7a variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_NEK1 <- NEK1$variante[7]
Espinal_setena_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#4obs

##8a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_NEK1 <- NEK1$variante[8]
Espinal_octava_variante_NEK1 <- subset(Espinal_var, variante == v1_NEK1)
#0obs

###SYNE1
##1a variant
0.003759*127 = 0.477393
0.0087*127 = 1.1049
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
SYNE1$variante<- paste(SYNE1$CHROM, SYNE1$POS, SYNE1$REF, SYNE1$ALT)
v1_SYNE1 <- SYNE1$variante[1]
Espinal_primera_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)
#2obs

##2a variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_SYNE1 <- SYNE1$variante[2]
Espinal_segona_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)
#2obs

##3-8, 10-12, 14, 17, 20
0.001880*127 = 0.23876
0.0043*127 = 0.5461
#3-0obs, 4-0obs, 5-0obs, 6-1obs, 7-0obs, 8-1obs, 10-0obs, 11-1obs, 12-0obs, 14-0obs, 17-1obs, 20-1obs
v1_SYNE1 <- SYNE1$variante[20]
Espinal_vint_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)

##9a variante
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_SYNE1 <- SYNE1$variante[9]
Espinal_novena_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)
#1obs

##13 variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_SYNE1 <- SYNE1$variante[13]
Espinal_tretzena_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)
#1obs

##15a variant
0.007519*127 = 0.954913
0.0043*127 = 0.5461
v1_SYNE1 <- SYNE1$variante[22]
Espinal_22_variante_SYNE1 <- subset(Espinal_var, variante == v1_SYNE1)
#0obs

##16a variant
0.005639*127 = 0.716153
0.0087*127 = 1.1049
#1obs

##18 variant 
0.013000*127 = 1.651
0.0087*127 = 1.1049
#2obs

##19 variant
0.007519*127 = 0.954913
0.0174*127 = 2.2098
#3obs

##21
0.003759*127 = 0.477393
0.0043*127 = 0.5461
#0obs

##22
0.005639*127 = 0.716153
0.0043*127 = 0.5461
#1obs

###SPG7
##1a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
SPG7$variante<- paste(SPG7$CHROM, SPG7$POS, SPG7$REF, SPG7$ALT)
v1_SPG7 <- SPG7$variante[1]
Espinal_primera_variante_SPG7 <- subset(Espinal_var, variante == v1_SPG7)
#0obs

##2a variant
0.009398*127 = 1.193546
0.0174*127 = 2.2098
v1_SPG7 <- SPG7$variante[2]
Espinal_segona_variante_SPG7 <- subset(Espinal_var, variante == v1_SPG7)
#4obs

##3a variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_SPG7 <- SPG7$variante[3]
Espinal_tercera_variante_SPG7 <- subset(Espinal_var, variante == v1_SPG7)
#0obs

##4a variant
0.005639*127 = 0.716153
0.0130*127 = 1.651
v1_SPG7 <- SPG7$variante[4]
Espinal_quarta_variante_SPG7 <- subset(Espinal_var, variante == v1_SPG7)
#0obs

###SPG11
##1a variant
0.007519*127 = 0.954913
0.0087*127 = 1.1049
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
SPG11$variante<- paste(SPG11$CHROM, SPG11$POS, SPG11$REF, SPG11$ALT)
v1_SPG11 <- SPG11$variante[1]
Espinal_primera_variante_SPG11 <- subset(Espinal_var, variante == v1_SPG11)
#0obs

##2a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_SPG11 <- SPG11$variante[2]
Espinal_segona_variante_SPG11 <- subset(Espinal_var, variante == v1_SPG11)
#1obs

##3a variant
0.013000*127 = 1.651
0.0304*127 = 3.8608
v1_SPG11 <- SPG11$variante[3]
Espinal_tercera_variante_SPG11 <- subset(Espinal_var, variante == v1_SPG11)
#1obs

##4a variant
0.015000*127 = 1.905
0.0217*127 = 2.7559
v1_SPG11 <- SPG11$variante[4]
Espinal_quarta_variante_SPG11 <- subset(Espinal_var, variante == v1_SPG11)
#4obs

##5a variant
0.001880*127 = 0.23876
0.0043*127 = 0.5461
v1_SPG11 <- SPG11$variante[5]
Espinal_cinquena_variante_SPG11 <- subset(Espinal_var, variante == v1_SPG11)
#1obs

######BULBAR(67 pacients)
###APOE
##1a variant
#En tot el mon
#0.092*67 = 6.16persones son expected en el mon    - AF
#0.1826*67 = 12.16 persones de pacients que esperem que tinuin la mutacio  -Affected_FCarriers
#per mirar en el nostre sample
Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
APOE$variante<- paste(APOE$CHROM, APOE$POS, APOE$REF, APOE$ALT)
v1_apoe <- APOE$variante[1] #LA PRIMERA VARIANTE DE APOE
Bulbar_primera_variante_apoe <- subset(Bulbar_var, variante == v1_apoe)
#8obs

##2a variant
#en tot el mon = 0.00188*67 = 0.12596
#pacients que esperem que tinuin la mutacio = 0.0043*67 = 0.2881
#en el nostre sample -- 1 persona
v1_apoe <- APOE$variante[2]
Bulbar_segona_variante_apoe <- subset(Bulbar_var, variante == v1_apoe)
#0obs

##3a variant
#en tot el mon = 0.05300*67 = 3.551
#0.1043*67 = 6.9881
v1_apoe <- APOE$variante[3]
Bulbar_tercera_variante_apoe <- subset(Bulbar_var, variante == v1_apoe)
#8 persones

###HFE
##1a variant
#mon = 0.169000*67 = 11.323
#0.3435*67 = 23.0145
Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
HFE$variante<- paste(HFE$CHROM, HFE$POS, HFE$REF, HFE$ALT)
v1_HFE <- HFE$variante[1]
Bulbar_primera_variante_HFE <- subset(Bulbar_var, variante == v1_HFE)
#23obs

##2a variant
#0.003759*67 = 0.251853
#0.0087*67 = 0.5829
v1_HFE <- HFE$variante[2]
Bulbar_segona_variante_HFE <- subset(Bulbar_var, variante == v1_HFE)
#0pacients

##3a variant
#0.021000*67 = 1.407
#0.0391*67 = 2.6197
v1_HFE <- HFE$variante[3]
Bulbar_tercera_variante_HFE <- subset(Bulbar_var, variante == v1_HFE)
#4obs

#4a variant
#0.001880*67 = 0.12596
#0.0043*67 = 0.2881
v1_HFE <- HFE$variante[4]
Bulbar_quarta_variante_HFE <- subset(Bulbar_var, variante == v1_HFE)
#0obs

###NEK1
##1a variant
#0.003759*67 = 0.251853
#0.0043*67 = 0.2881
Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
NEK1$variante<- paste(NEK1$CHROM, NEK1$POS, NEK1$REF, NEK1$ALT)
v1_NEK1 <- NEK1$variante[1]
Bulbar_primera_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##2a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_NEK1 <- NEK1$variante[2]
Bulbar_segona_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##3a variant 
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_NEK1 <- NEK1$variante[3]
Bulbar_tercera_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##4a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_NEK1 <- NEK1$variante[4]
Bulbar_quarta_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##5a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_NEK1 <- NEK1$variante[5]
Bulbar_quinta_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##6a variant
0.005639*67 = 0.377813
0.0130*67 = 0.871
v1_NEK1 <- NEK1$variante[6]
Bulbar_sexta_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##7a variant
0.005639*67 = 0.377813
0.0130*67 = 0.871
v1_NEK1 <- NEK1$variante[7]
Bulbar_setena_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#0obs

##8a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_NEK1 <- NEK1$variante[8]
Bulbar_octava_variante_NEK1 <- subset(Bulbar_var, variante == v1_NEK1)
#1obs

###SPG7
##1a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
SPG7$variante<- paste(SPG7$CHROM, SPG7$POS, SPG7$REF, SPG7$ALT)
v1_SPG7 <- SPG7$variante[1]
Bulbar_primera_variante_SPG7 <- subset(Bulbar_var, variante == v1_SPG7)
#1obs

##2a variant
0.009398*67 = 0.629666
0.0174*67 = 1.1658
v1_SPG7 <- SPG7$variante[2]
Bulbar_segona_variante_SPG7 <- subset(Bulbar_var, variante == v1_SPG7)
#0obs

##3a variant
0.005639*67 = 0.377813
0.0130*67 = 0.871
v1_SPG7 <- SPG7$variante[3]
Bulbar_tercera_variante_SPG7 <- subset(Bulbar_var, variante == v1_SPG7)
#4obs

##4a variant
0.005639*67 = 0.377813
0.0130*67 = 0.871
v1_SPG7 <- SPG7$variante[4]
Bulbar_quarta_variante_SPG7 <- subset(Bulbar_var, variante == v1_SPG7)
#4obs

###SPG11
##1a variant
0.007519*67 = 0.503773
0.0087*67 = 0.5829
Bulbar_var$variante<- paste(Bulbar_var$CHROM, Bulbar_var$POS, Bulbar_var$REF, Bulbar_var$ALT)
SPG11$variante<- paste(SPG11$CHROM, SPG11$POS, SPG11$REF, SPG11$ALT)
v1_SPG11 <- SPG11$variante[1]
Bulbar_primera_variante_SPG11 <- subset(Bulbar_var, variante == v1_SPG11)
#2obs

##2a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_SPG11 <- SPG11$variante[2]
Bulbar_segona_variante_SPG11 <- subset(Bulbar_var, variante == v1_SPG11)
#0obs

##3a variant
0.013000*67 = 0.871
0.0304*67 = 2.0368
v1_SPG11 <- SPG11$variante[3]
Bulbar_tercera_variante_SPG11 <- subset(Bulbar_var, variante == v1_SPG11)
#3obs

##4a variant
0.015000*67 = 1.005
0.0217*67 = 1.4539
v1_SPG11 <- SPG11$variante[4]
Bulbar_quarta_variante_SPG11 <- subset(Bulbar_var, variante == v1_SPG11)
#1obs

##5a variant
0.001880*67 = 0.12596
0.0043*67 = 0.2881
v1_SPG11 <- SPG11$variante[5]
Bulbar_cinquena_variante_SPG11 <- subset(Bulbar_var, variante == v1_SPG11)
#0obs

######Gen SETX

#Les frequencies mundials amb SETX, no passen del 0.5 per tant, no son mutacions molt frequents
#els que son expected en pacients tampoc passa del 0.5
Espinal_var$variante<- paste(Espinal_var$CHROM, Espinal_var$POS, Espinal_var$REF, Espinal_var$ALT)
SETX$variante<- paste(SETX$CHROM, SETX$POS, SETX$REF, SETX$ALT)
v1_SETX <- SETX$variante[5]
Espinal_cinquena_variante_SETX <- subset(Espinal_var, variante == v1_SETX)
#1a-0obs, 2a-2obs, 3a-2obs, 4a-1obs, 5a-1obs


#De una forma muco mas general -por genes
ab <- data.frame(table(FrecAfect_moderate$Gene_Name))  #por cada gen, cuantas variantes hay
names(ab) = c("Gene_name", "Num of variants")
#SYNE1 (22), NEK1(8), 
ABC <- cbind(FrecAfect_moderate$Gene_Name, FrecAfect_moderate$AC)
ABC = data.frame(ABC)
genes<-unique(ABC[,1])
ABC$X2 = as.numeric(ABC$X2)
resultado<-data.frame()
for (i in 1:length(genes)){
  resultado[i,1]<- genes[i]
  ac_gen<- subset(ABC, X1 == genes[i])
  suma_ac<- sum(ac_gen[,2])
  resultado[i,2]<- suma_ac
}
#GEN CON MUCHAS VARIANTES 
table(FrecAfect_moderate$Gene_Name)
#GEN CON ALLELE COUNT 
#por cada gen, las veces que sale mutado, el gen
resultado

#PARA AÑADIR UNA TERCERA COLUMNA EN RESULTADO
resultado[1,3] = "141032388" 
resultado[2,3] = "80356734"
resultado[3,3] = "N/D"
resultado[4,3] = "121908517"
resultado[5,3] = "N/D"
resultado[6,3] = "55862001"
resultado[7,3] = "41308840, 375742430"
resultado[8,3] = "N/D"
resultado[9,3] = "N/D"
resultado[10,3] = "104893751"
resultado[11,3] = "190235251"
resultado[12,3] = "189186475, 200161705"
resultado[13,3] = "121909192"
resultado[14,3] = "188040167"
resultado[15,3] = "200396166"
resultado[16,3] = "1799945"
resultado[17,3] = "121908287"
resultado[18,3] = "117480635"
resultado[19,3] = "200887429, 77518956"
resultado[20,3] = "N/D"
resultado[21,3] = "139295139"
resultado[22,3] = "147006695"
resultado[23,3] = "572667303"
resultado[24,3] = "145438764"
resultado[25,3] = "N/D"
resultado[26,3] = "N/D"
resultado[27,3] = "N/D"
resultado[28,3] = "58599399"
resultado[29,3] = "11554495"
resultado[30,3] = "N/D"
resultado[31,3] = "N/D"
resultado[32,3] = "139801016"
resultado[33,3] = "N/D"
resultado[34,3] = "N/D"
resultado[35,3] = "150888094"
resultado[36,3] = "531550505"
resultado[37,3] = "76389165"
resultado[38,3] = "28941770"
resultado[39,3] = "116319889"
resultado[40,3] = "140547520"
resultado[41,3] = "143956882, 143624519"
resultado[42,3] = "429358"
resultado[43,3] = "121918393"
resultado[44,3] = "137852591"
names(resultado) = c("Gene_name", "AC", "RS")
write.xlsx(resultado, "resultado.xlsx")
