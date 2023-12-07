LSQ09<-function(u){
  m<-"Biotin-4-fluorescein binding capacity >1200pmole mg "
  as.numeric(gsub(m,"",grep(m,u,value=T)))
}
