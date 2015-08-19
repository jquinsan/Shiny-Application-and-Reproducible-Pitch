data(mtcars)

fit <- lm(mpg ~ wt + hp, data=mtcars)

mpg <- function(wt, hp) predict(fit, data.frame(wt=wt/1000, hp=hp))

shinyServer(
        function(input, output) {
                output$inputWt <- renderPrint({input$wt})
                output$inputHp <- renderPrint({input$hp})
                output$prediction <- renderPrint({mpg(input$wt, input$hp)[[1]]})
        }
)