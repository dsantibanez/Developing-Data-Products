library(shiny)
shinyServer(
        function(input,output){
            output$oid1<-renderPrint({input$id1})
            output$oweight<-renderPrint({input$weight})
            output$oheight<-renderPrint({input$height})
            output$obmi<-renderPrint({
                input$goButton
                isolate(input$weight/input$height^2*10000)})
                 
            output$ocon<-renderPrint({
                input$goButton

                isolate(
                    if(input$weight==0 & input$height==0){'No Weight and Height set. Please enter the values and click on Calculate your BMI.'
                    }else{                    
                    if((input$weight/input$height^2*10000)<18.5){
                    'Your BMI is Low'
                    }else if((input$weight/input$height^2*10000)>24.99){
                        'Your BMI is Overweight'
                    }else{
                            'Your BMI is Normal'
                    }}
                    )
                
                    

                })
            

                            
        }
        )