library(xlsx)
library(stringr)
datos<-read.xlsx(file.choose(), sheetName = "ESTEVEALS_01_v2")

ImpactoAM<-subset(datos, Annotation_Impact=="HIGH" | Annotation_Impact=="MODIFIER" | Annotation_Impact=="MODERATE")
FrecPort<-subset(ImpactoAM, Affected_FCarriers >= 0.5)
write.xlsx(FrecPort, "variante_unica.xlsx")
FrecAfect<-subset(ImpactoAM, Unaffected_FCarriers <= 0.2)
write.xlsx(FrecAfect, "filtro_impact_unaffectedfrequency_360.xlsx")
#Amb impacte nomes de high
Impacto_high<-subset(datos, Annotation_Impact=="HIGH")
#Amb SNP
Impacto_high_snp1 <- subset(Impacto_high, ALT=="A" | ALT=="C" | ALT=="T" | ALT=="G")
Impacto_high_snp2 <- subset(Impacto_high_snp1, REF=="A" | REF=="C" | REF=="T" | REF=="G")
write.xlsx(Impacto_high_snp2, "Impacto_high_snp2.xlsx")

#Fer el mateix d'abans però fer amb tots els impact que hi ha (menys el low)
ImpactoAM<-subset(datos, Annotation_Impact=="HIGH" | Annotation_Impact=="MODIFIER" | Annotation_Impact=="MODERATE")
FrecAfect<-subset(ImpactoAM, Unaffected_FCarriers <= 0.2)
Impacto_snp1 <- subset(FrecAfect, ALT=="A" | ALT=="C" | ALT=="T" | ALT=="G")
Impacto_snp2 <- subset(Impacto_snp1, REF=="A" | REF=="C" | REF=="T" | REF=="G")
#Tenim 387 observacions

#Fer el mateix però nomes impact high i modifier
ImpactoAM<-subset(datos, Annotation_Impact=="HIGH" | Annotation_Impact=="MODIFIER")
FrecAfect<-subset(ImpactoAM, Unaffected_FCarriers <= 0.2)
Impacto_snp1 <- subset(FrecAfect, ALT=="A" | ALT=="C" | ALT=="T" | ALT=="G")
Impacto_snp2 <- subset(Impacto_snp1, REF=="A" | REF=="C" | REF=="T" | REF=="G")
#Tenim 307 observacions

#Impact high i moderate, SNP i frequency unaffected
ImpactoAModerate<-subset(datos, Annotation_Impact=="HIGH" | Annotation_Impact=="MODERATE")
FrecPort_moderate<-subset(FrecAfect_moderate, Affected_FCarriers >= 0.5)
FrecAfect_moderate<-subset(ImpactoAModerate, Unaffected_FCarriers <= 0.2)
write.xlsx(FrecAfect_moderate, "FrecAfect_moderate.xlsx")
ImpactoAModerate_snp1 <- subset(FrecAfect_moderate, ALT=="A" | ALT=="C" | ALT=="T" | ALT=="G")
ImpactoAModerate_snp2 <- subset(ImpactoAModerate_snp1, REF=="A" | REF=="C" | REF=="T" | REF=="G")
write.xlsx(ImpactoAModerate_snp2, "ImpactoAModerate_snp2.xlsx")
#96 observacions
#Apliquem Fun mes ran que Faff
resultado<- data.frame()
for (i in 1:dim(ImpactoAModerate_snp2)[1]){
  if (ImpactoAModerate_snp2$Affected_FCarriers[i] >= ImpactoAModerate_snp2$Unaffected_FCarriers[i]){
    resultado<- rbind(resultado, ImpactoAModerate_snp2[i,])
  }
}
write.xlsx(resultado, "72_variants.xlsx")
#74 resultados

filas_enf<- numeric()
for (i in 1:dim(FrecAfect_moderate)[1]){
  campo<-FrecAfect_moderate$CLNDN[i]
  if (is.na(campo)==FALSE){
    a<-str_match_all(campo, "Amyotrophic_lateral_sclerosis")[[1]]
  b<-str_match_all(campo, "neuron")[[1]]
  c<-str_match_all(campo, "spinal")[[1]]
  d<-str_match_all(campo, "neural")[[1]]
  if(dim(a)[1]==1 |dim(b)[1]==1 |dim(c)[1]==1 |dim(d)[1]==1){
    filas_enf<-c(filas_enf,i)
    }
  }
}
biology_pathway <- FrecAfect_moderate[filas_enf,]
unique(biology_pathway$CLNDN)
write.xlsx(biology_pathway, "enfermdades_with_frequency_filter_moderate.xlsx")
