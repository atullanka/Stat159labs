library(shiny) 
advert <- read.csv("Advertising.csv")

## Shiny Lab : Scatter plots for Sales versus Television, Radio and Newspaper 

ui <- fluidPage(
  selectInput(inputId = "media",
             label = "Advertising medium:",
             choices = c("TV", "Radio", "Newspaper"),
             selected = "TV"),
  plotOutput(outputId = "main_plot")
)

server <- function(input, output) {
   
   output$main_plot <- renderPlot({
     
     plot(x = advert[,input$media], y = advert$Sales,
          xlab = "Media Advertising Budget (in thousands of dollars)",
          ylab = "Sales",
          main = "Sales vs Advertising Budget")
     abline(lm(advert$Sales ~ advert[,input$media])[[1]][[1]], lm(advert$Sales ~ advert$TV)[[1]][[2]], col = 'red', lwd = 1.5)
   })
 }

shinyApp(ui = ui, server = server) 
