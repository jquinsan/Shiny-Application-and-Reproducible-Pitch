shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Fuel consumption prediction"),
                
                sidebarPanel(
                        numericInput("wt", "Weight (lb)", 3000, min=1000, max=6000, step=100),
                        numericInput("hp", "Power (hp)", 150, min=50, max=350, step=10),
                        submitButton("Submit")
                ),
                mainPanel(
                        h3("Documentation"),
                        p(
                                "This app predict fuel consumption in miles per 
                                gallon by a car if you introduce its weight in
                                lb and its power in hp. The model were made from
                                mtcars dataset"
                        ),
                        h3("Results of prediction"),
                        h4("Weight (lb) entered"),
                        verbatimTextOutput("inputWt"),
                        h4("Power (hp) entered"),
                        verbatimTextOutput("inputHp"),
                        h4("Fuel consumption predicted in miles per gallon is"),
                        verbatimTextOutput("prediction")
                )
        )
)