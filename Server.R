library(shiny)

count<-function(weight,height,range,age,Gender) {
  weight/(height*height)
}



server <- function(input, output) {
  
  
  output$inputweightvalue <- renderPrint({input$weight})
  output$inputheightvalue <- renderPrint({input$height})
  output$inputGendervalue <- renderPrint({input$Gender})
  output$inputrangevalue <- renderPrint({input$range})
  output$estimation <- renderPrint({count(input$weight,input$height,input$range,input$age,input$Gender)})
}
