library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Distributions!"),
  p("Red lines are means, green lines are + and - the variance."),
  p("Note that you can click on the slider and use the arrow keys to move."),
  hr(),
    mainPanel(
      sliderInput("prob",
                  "Binomial Prob(success):",
                  min = 0,
                  max = 1,
                  value = 0.5),
      sliderInput("size",
                  "Binomial Number of trials:",
                  min = 0,
                  max = 30,
                  value = 10),
      plotOutput("binomPlot"),
      hr(),
      sliderInput("gprob",
                  "Geometric Prob(success):",
                  min = 0,
                  max = 1,
                  value = 0.1),
      plotOutput("geomPlot"),
      hr(),
      sliderInput("lambda",
                  "Poisson Lambda:",
                  min = 0,
                  max = 30,
                  value = 5),
      plotOutput("poisPlot"),
      hr(),
      sliderInput("mean",
                  "Exponential mean:",
                  min = 0,
                  max = 10,
                  value = 1),
      plotOutput("expPlot")
    )
    
  )
)