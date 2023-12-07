server <- function() {
  ######
  library(shiny)
  function(input, output, session) {
    data <- reactive({
      req(input$upload)
      munge_CoA(input$upload$datapath)
    })

    output$head <- renderTable({
      data()
    })

  }
  ###
}
