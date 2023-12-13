LSQ04<-function(u){
  s<-grep("^Volumetric Titration",u,value=T)
  a<-gsub("^.*?18.0 ","",s)
  b<-gsub(" .*?$","",a)
  as.numeric(b)
}
