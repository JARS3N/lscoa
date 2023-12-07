batch<-function(u){
  txt<-c("^","BATCH NUMBER ","[0-9]+")
  x<-grep(paste0(txt,collapse=""),u,value=T)
  as.integer(gsub(txt[2],"",x))
}
