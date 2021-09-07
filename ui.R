#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(LDAvis)
library(highcharter)
library(DT)
library(shinydashboard)
library(shinyjs)


dashboardPage(
  dashboardHeader(title = "Political Analysis"),
  dashboardSidebar(
    
   
    radioButtons("TimelineChoice", "Please select your Timeline:", 
                 choices = c("Total", "Pre Oli Government", "Oli Government")),
   sliderInput("nTerms", "Number of terms to display", min = 5, max = 40, value = 30)
   
    ),
  dashboardBody(
    
    h3("Political Analysis of Last Five Years"),
    
    p("The Aim of this App is to do Political Text Analysis of last five years using all the Political Section articles from the Republica Daily."),
    
    p("The App works has Topic Analysis:"),
   
    
    p(),
    
    p("The App also has a tab for Insights from the Analysis."),
    p(),
 
    code("Try out the App by clicking on each of the Tabs!"),
    
    tabsetPanel(type="tab",
                
                tabPanel("Topic", 
                         p("In Topic Analysis, we look at the most relevant topics/themes from the articles."),
                         p("The Topics are analysed using Latent Learning in Machine Learning."),
                         code("Model Used: Latent Dirichelt Allocation (LDA)"),
                         p(),
                         em("(Note:Please view the Topic Analysis in fullscreen mode.)"),
                         visOutput('myChart')),
                
                tabPanel("Insights",
                         
                         p("Here are some of the key insights from the analysis."),
                         
                         p("There are 4 Topics extracted from both Pre Oli and Oli Government Articles."),
                         
                         h4("Pre Oli Government Articles and Topics"),
                         
                         code("Government(Constitution Influenced)"),
                         br(),
                         
                         code("Law"),
                         br(),
                         
                         code("Foreign Affairs"),
                         br(),
                         
                         code("Election"),
                         br(),
                           
                         
                         h4("Oli Government Articles and Topics"),
                         
                         
                         code("Goverment(Issues Influenced)"),
                         br(),
                         
                         code("Political Party"),
                         br(),
                         
                         code("Foreign Affairs"),
                         br(),
                         
                         code("Law"),
                         br(),


                         h4("Key Differences between Pre Oli Government and Oli Goverment Topics"),
            
                         p("While Pre Oli Goverment has a topic related to Election - which is understandable as election was held during earlier government,
                           Oli Government has a whole topic related to Party related Politics, the one influenced heavily by Nepal Communist Party."),
                         
                         p("There are Topics common to both Pre Oli and Oli Government, ones related to Foreign Affairs and Law/Judiciary. Still, even 
                           winthin Foreign Affairs, there are stark differences in the influential terms."),
                         
                         p("For example:"),
                         
                         p("Government related terms related to Pre Oli Govermennt are:"),
                         
                        code("Constitution, Bill, Amendment, Madhesh Unification, Coalition, Madhesh, Naturalized, Sadbhawana, Samajbadi"),
                         
                         p(),
                         p("Whereas the ones related to Oli Government are:"),
                         
                         code("Local, Security, Treatment, Lockdown, Violence, Hunger, Virus, Black, TU"),
                         
                         p(),
                         p("Also, some of the influential terms related to Party Politics, which is only present in Oli Goverment are: "),
                         
                         code("Meeting, NCP, Communist, Oli, Dahal, Speaker, Faction, Bamdev, Tumbahangphe, Nsu, Ncps"),
                        
                        p(),
                        p("And lastly, although Foreign Affairs is a topic common to both Pre Oli and Oli Government, there are stark differences
                          in the key influential terms under it too."),
                        
                        p(),
                        p("The influential terms under Foreign Affairs under Pre Oli Government are:"),
                        code("Pranav, Swaraj, Delhi, Ambassador, India, China, Saudi"),
                        
                        p(),
                        p("Whereas the influential terms under Foreign Affairs under Oli Government are:"),
                        code("Indo, Pacific, Beijing, Bimstec, Kalapni, Limpiyadhura, Kashmir, Pakistan"),
                        
                        p(),
                        h4("End Notes and Strategies"),
                        
                        p("We can look for more differences with similar comparison between the two governments on the basis of the articles
                          published during the tenure.")
                        
                      
                        
                       
                 
                         )
                
                )
    
    
    )
    )



