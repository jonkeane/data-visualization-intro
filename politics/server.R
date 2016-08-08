#load packages and data
library(shiny)
library(ggplot2)

load("d.Rda")
d<- d[d$words<10000,]

# make some lookup tables to help with labeling 
vars.to.names <- data.frame(vars = colnames(d)[c(2:4, 7:20)], stringsAsFactors = F)
vars.to.names$names <- c(as.character(vars.to.names$vars[1:12]), 
                         "Number of words", "Number of sentences", "Number of unique words",
                         "Average words per sentence","Average sentences per speech")
vars.to.names$colnames <- c(paste("Number of times", paste0("\'",vars.to.names$names[1:12], "\'"), "said in speech"), 
                            vars.to.names$names[13:nrow(vars.to.names)])


# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Define output as speech plot 
  output$speechPlot <- renderPlot({
    # plot is as before, except inputs are dynamic
    p <- ggplot(d, aes_string("year", vars.to.names$vars[vars.to.names$names==input$value])) + 
      geom_point(aes(color= party)) +
      scale_color_manual(name = "Party", values = c("Democrat" = 'blue', "Republican" = 'red'))+
      ggtitle(vars.to.names$colnames[vars.to.names$names==input$value])+
      ylab(strsplit(vars.to.names$colnames[vars.to.names$names==input$value], " ")[[1]][1])+
      xlab("Year")+
      theme_bw()
    print(p)
    
  })
})