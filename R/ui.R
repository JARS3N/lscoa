ui <- function(u) {
  ######
  library(shiny)
  fluidPage(titlePanel("Lodestar CoA"),


            sidebarLayout(sidebarPanel(fileInput(
              "upload", "Upload a file"
            )),

            mainPanel(tableOutput("head"),
                     textOutput("text")
                     )))
  ######
}
