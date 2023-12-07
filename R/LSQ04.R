LSQ04<-function(u){
  s<-grep("^Volumetric Titration",u,value=T)
  as.numeric(gsub("^.*?18.0 | [.]$","",s))
}
