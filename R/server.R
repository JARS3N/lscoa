server <- function() {
  ######
  library(shiny)
  function(input, output, session) {
    data <- reactive({
      req(input$upload)
      #munge_CoA(input$upload$datapath)
      # DEBUGGING
      u<-input$upload$datapath
      require(tesseract)
      require(dplyr)
      message('txt portion')
      txt <- tesseract::ocr(u,engine=tesseract("eng"))
      message('txt_vec')
      txt_vec<-strsplit(txt[[1]],split="\n")[[1]]
      message('summarize')
      summarize_CoA(txt_vec)
      #
    })

    output$head <- renderTable({
      data()
    })

  }
  ###
}
