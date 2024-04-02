#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dados)
library(ggplot2)

# Define server logic required to draw a histogram
function(input, output, session) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- dados_iris[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        ggplot2::ggplot(dados_iris, aes(x = x)) +
          geom_histogram(breaks = bins,
                        fill = 'forestgreen', color = 'white') +
        labs(x = 'Comprimento de sépalas (cm)',
             y = 'Frequência',
             title = 'Dados Iris') +
          theme_bw()
    })

}
