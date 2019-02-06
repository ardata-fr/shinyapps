# Function for module UI
hello_worldUI <- function(id) {
    ns <- NS(id)
    
    fluidPage(
        fluidRow(
            column(2, textInput(ns("TI_username"), label = NULL, placeholder = "your name")),
            column(2, actionButton(ns("AB_hello"), label = "Hello !"))
        ),
        fluidRow(
            column(12, textOutput(ns("TO_Hello_user")))
        )
    )
    
}

# Function for module server logic
hello_world <- function(input, output, session) {
    
    name <- eventReactive(input$AB_hello, {
        return(input$TI_username)
    })
    
    output$TO_Hello_user <- renderText({
        if (name() %in% "") {
            return("Hello world !")
        } else {
            return(paste("Hello", name(), "!"))
        }
    })
    
}