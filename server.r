shinyServer(
  #
  # To run make sure a ui.r and a server.r are in the directory
  # and the shiny library is installed and loaded into the session
  # with "library(shiny)"
  # then change to that directory in R-studio 
  # and invoke the function "runApp()"
  #
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$odate <- renderPrint({input$date})
  }
)