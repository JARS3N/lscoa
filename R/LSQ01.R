LSQ01<-function(u){
  look<-"^Mean [(]Microscopy[,] packed array"
  s <-grep(look,u,value=T)
  as.numeric(gsub(".*? ", "", s))
}
