#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(LDAvis)
library(shiny)
library(shinyjs)

### R Data Files were separately created in different R Scripts so as to run the App smoothly ###

### R Data Files then read from Data directory inside the project folder ###


load("./Data/PreFinal.RData")
load("./Data/PostFinal.RData")
load("./Data/TotalFinal.RData")


shinyServer(function(input, output, session) {
  
               output$myChart <- renderVis({
                 
                 switch(input$TimelineChoice,
                        "Total" =  createJSON(phi_total,theta_total,doc.length_total,vocab_total,term.frequency_total,R=input$nTerms),
                        "Pre Oli Government" =  createJSON(phi_pre,theta_pre,doc.length_pre,vocab_pre,term.frequency_pre, R=input$nTerms),
                        "Oli Government" =  createJSON(phi_post,theta_post,doc.length_post,vocab_post,term.frequency_post, R=input$nTerms)
                 )
               })
               
})