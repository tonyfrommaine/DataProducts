library(shiny)
shinyUI(pageWithSidebar(
        headerPanel('Height and Weight of Women in 1975'),
        sidebarPanel(
                h3('Instructions'),
                p('This will give the expected weight for a woman of a certain height based on averages of 1975'),
                p('The graph on the right will also change to reflect your choice'),
        h3('Please enter height in inches'),
        numericInput('ht', 'Height', 67, min = 58, max = 72, step = 1),
        p(),
        h3('If this was 1975, according the World Almanac:'),
        h4('For a Height of'),
        verbatimTextOutput("inputValues"),
        h4('The average weight of a woman should be'),
        verbatimTextOutput("prediction")
         ),
    mainPanel(
        plotOutput("allplot")
        )
))