shinyServer(
    function(input, output) {
        output$value <- renderPrint({ input$slider1 
            return(output$value)})
    })