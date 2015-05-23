library(shiny)
data(women)



wt <- function(ht) {
        rowNum <- which(women$height==ht)
        return(women[rowNum,2])
}

shinyServer(
        function(input, output) {
                output$inputValues <- renderPrint({paste(input$ht, "inches ")})
                output$prediction <- renderPrint({paste(wt(input$ht), "pounds")})
                output$allplot <- renderPlot({
                         plot(women$height, women$weight,
                                          xlab='Height in Inches',
                                          ylab='Weight in Pounds',
                                          main='Average Weight for Women in 1975',
                              col=ifelse(women$height==input$ht, "red", "black"),
                              pch=ifelse(women$height==input$ht, 17, 1),
                              cex=ifelse(women$height==input$ht, 2, 1.5))
                        
        })
})