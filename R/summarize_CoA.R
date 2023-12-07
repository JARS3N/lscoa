summarize_CoA<-function(u){
  data.frame(
    batch=batch(u),
    DoM=DoM(u),
    DoE=DoE(u),
    LSQ01 = LSQ01(u),
    CDQ03 = CDQ03(u),
    LSQ04 = LSQ04(u),
    LSQ09 = LSQ09(u)
  )
}
