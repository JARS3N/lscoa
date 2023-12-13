server<-function(u){

    library(shiny)
    library(tesseract)
    library(dplyr)
    function(input, output, session) {
      observeEvent(input$upload, {
        u <- input$upload$datapath
        message('txt portion')
        eng <- tesseract("eng")
        txt <- tesseract::ocr(u, engine = eng)
        txt_vec <- strsplit(txt[[1]], split = "\n")[[1]]
        output$text <- renderText({
          txt_vec
        })
        q <-  lscoa::summarize_CoA(txt_vec)
        output$head <- renderTable({
          q
        })
      })
      
      
    }


}
