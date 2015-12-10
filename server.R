library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
 
  output$binomPlot <- renderPlot({
    prob <- input$prob
    size <- input$size
    d <- rbinom(500, size=size,prob=prob)
    hist(d, col = 'darkgray', border = 'white', main="Binomial", ylab="P(x)", xlab="x", xlim=c(0,30))
    abline(v=mean(d), col="red")
    abline(v=mean(d)+var(d), col="green")
    abline(v=mean(d)-var(d), col="green")
  })  
  output$geomPlot <- renderPlot({
    gprob <- input$gprob
    d <- rgeom(500, prob=gprob)
    hist(d, col = 'darkgray', border = 'white', main="Geometric", ylab="P(x)", xlab="x", xlim=c(0,30))
    abline(v=mean(d), col="red")
    abline(v=mean(d)+var(d), col="green")
    abline(v=mean(d)-var(d), col="green")
  })
  output$poisPlot <- renderPlot({
    lambda <- input$lambda
    d <- rpois(500, lambda=lambda)
    hist(d, col = 'darkgray', border = 'white', main="Poisson", ylab="P(x)", xlab="x", xlim=c(0,50))
    abline(v=mean(d), col="red")
    abline(v=mean(d)+var(d), col="green")
    abline(v=mean(d)-var(d), col="green")
  })
  output$expPlot <- renderPlot({
    mean <- input$mean
    rate <- 1/mean
    d <- rexp(500, rate=rate)
    hist(d, col = 'darkgray', border = 'white', main="Exponential", ylab="P(x)", xlab="x", xlim=c(0,10))
    abline(v=mean(d), col="red")
    abline(v=mean(d)+var(d), col="green")
    abline(v=mean(d)-var(d), col="green")
  })
})