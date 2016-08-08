# load packages and data
library(shiny)

load("d.Rda")
d<- d[d$words<10000,]
vars.to.names <- data.frame(vars = colnames(d)[c(2:4, 7:20)],  stringsAsFactors = F)
vars.to.names$names <- c(as.character(vars.to.names$vars[1:12]), 
                         "Number of words", "Number of sentences", "Number of unique words",
                         "Average words per sentence","Average sentences per speech")


# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("State of Union Addresses"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("value", "Choose a value:", 
                    choices=vars.to.names$names, # all the possible variables we want to plot
                    selected = "Number of words"), # default selected
        hr(),
        helpText("Source: http://www.presidency.ucsb.edu")
      ),
      
      # Create a spot for the plot 
      mainPanel(
        plotOutput("speechPlot")  
      )
      
    )
  )
)