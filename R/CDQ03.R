CDQ03<-function(u){
  s<-grep("Bead solids content",u,value=T)
   as.numeric(gsub(".*?ml | (=|v1).*?$","",s))
}
