library(shiny)

ui <- fluidPage(
    
    pageWithSidebar(
      headerPanel("BMI Calculator", windowTitle = "calories"),
      
      sidebarPanel( 
        selectInput("Gender", label = h3("You are..."), 
                    choices = list("Male" = 1, "Female" = 2,
                                   selected = 2)),
        numericInput('weight', 'Insert your ideal weight in kilograms', 50) ,
        numericInput('height', 'Insert your height in metres', 1.70, min = 0.02, max = 3, step = 1),
        h5("Drag the slider: from sedentary to very active life"),
        sliderInput("range", label = "Activity", min = 1.2, max = 1.9 , value = 1.55, step = 0.5),
        submitButton('Submit')), 
      mainPanel(
        p("BMI", style = "color:blue"),
        h3('Values entered by you:'), 
        p('weight:'), verbatimTextOutput("inputweightvalue"),
        p('height:'), verbatimTextOutput("inputheightvalue"),
        h2('BMI', style = "color:blue"),
        verbatimTextOutput("estimation")
      )
      
      
    ))