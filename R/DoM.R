DoM<-function(u){
  txt<-c("^DATE OF MANUFACTURE ")
  gsub(txt,"",grep(txt,u,value=T)) %>%
    date_convert(.)
}
