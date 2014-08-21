library(UsingR)
data(galton)

shinyServer(
  #
  # To run make sure a ui.r and a server.r are in the directory
  # and the shiny library is installed and loaded into the session
  # with "library(shiny)"
  # then change to that directory in R-studio 
  # and invoke the function "runApp()" or
  # runGitHub("DataProdProject","MikeWise2718")
  #
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$odate <- renderPrint({input$date})
    output$newHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
      mu <- input$mu
      lines(c(mu, mu), c(0, 200),col="red",lwd=5)
      mse <- mean((galton$child - mu)^2)
      text(63, 150, paste("mu = ", mu))
      text(63, 140, paste("MSE = ", round(mse, 2)))
    })
  }
)