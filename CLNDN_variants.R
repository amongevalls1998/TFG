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