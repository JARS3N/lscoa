server <- function() {
  ######
  library(shiny)
  library(dplyr)
  library(tesseract)
  print("start")
  message('start message')
  function(input, output, session) {
    # data <- reactive({
    #   req(input$upload)
    #   #munge_CoA(input$upload$datapath)
    #   # DEBUGGING *
    #   u<-input$upload$datapath
    #   message('txt portion')
    #   eng<-tesseract("eng")
    #   txt <- tesseract::ocr(u,engine=eng)
    #   cat(txt)
    #   message('txt_vec')
    #   txt_vec<-strsplit(txt[[1]],split="\n")[[1]]
    #   message('summarize')
    #   summarize_CoA(txt_vec)
    #   #*****
    # })
    
    observeEvent(input$upload,{
      u<-input$upload$datapath
      message('txt portion')
      txt <- tesseract::ocr(u,engine=eng)
      cat(txt)
      message('txt_vec')
      txt_vec<-strsplit(txt[[1]],split="\n")[[1]]
      message('summarize')
      TBL<-summarize_CoA(txt_vec)
      
    })
    
    
    output$head <- renderTable({TBL})
    
  }
  ###
}
