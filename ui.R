#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dados)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Comprimento sápalas - Dados Iris"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Número de bins:",
                        min = 1,
                        max = 50,
                        value = 30) # 30 é o valor padrão na tela antes de ser definido pelo usuário
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)
