library(shiny)

source("hello_world.R")

ui <- fluidPage(
    
    titlePanel("Shiny module - minimal example"),
    
    fluidRow(
        hello_worldUI(id = "id_1")
    )
    
)

server <- function(input, output, session) {
    
    callModule(module = hello_world, id = "id_1")
    
}

shinyApp(ui = ui, server = server)

