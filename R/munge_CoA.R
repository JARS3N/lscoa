munge_CoA<-function(u){
  require(tesseract)
  require(dplyr)
  txt <- tesseract::ocr(u,engine=tesseract("eng"))
  txt_vec<-strsplit(txt[[1]],split="\n")[[1]]
  summarize_CoA(txt_vec)
}
