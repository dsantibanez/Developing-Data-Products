library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Course Project - Developing Data Products"),
    sidebarPanel(
        numericInput("weight",label = h4("Enter the weight in kg"),min = 0, max = 250,value=0),
        sliderInput('height', label = h4("Enter the height in cm"), min = 0, max = 250, value=0),
        actionButton("goButton","Calculate your BMI")
        
    ),
    mainPanel(
         tabsetPanel(
            tabPanel('Results',
        h4("Weight"),
        verbatimTextOutput("oweight"),
        h4("Height"),
        verbatimTextOutput("oheight"),
        h4("BMI"),
        verbatimTextOutput("obmi"),
        h4('Conclusion'),
        verbatimTextOutput('ocon')
                    ),
            tabPanel('Documentation', 
                     p(h3('BMI Calculator')),
                     p(h4('Goals')),
                     p('The goal of this project is to have a tool for easy calculation of the BMI (Body Mass Index). 
                       The development tool is the Shiny package in R along with other packages.'),
                     p(h4('Formula explanation')),
                     p('The BMI is a value derived from the mass (weight) and height of an individual. 
                       The BMI is defined as the body mass divided by the square of the body height (weight/height^2) 
                       and is universally expressed in units of kg/m2.'),
                     p(h4('How to use the tool')),
                     p('To calculate the BMI you just have to enter your weight in kilograms and your height in centimeters.
                       These two vaules are shown in the main panel in a reactive way. After that, you have to click on the "Calculate your BMI button" 
                       and it wil calculate the BMI in a non reactive way. Also it will be display a conclusion regarding to the BMI value. 
                       If the BMI value is lower than 18.5 the conclusion will be that the value is Low, if it is between 18.51 and 24.99
                       the conclusion will be that the value is Normal and if it is 25 or higher the conclusion will be that the value is Overweight')
                     
                     
                       ) 
                          ))
                    )
        
            )


