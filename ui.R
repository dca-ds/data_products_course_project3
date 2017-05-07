library(shiny)
shinyUI(fluidPage(
  titlePanel("Shiny Beat Fequencies"),
  sidebarLayout(
    sidebarPanel(
       sliderInput("f",
                   "Wave 2 frequency (Hz):",
                   min = 330,
                   max = 340,
                   value = 330)
    ),
    mainPanel(
        h3("Beat Frequency Visualizer"),
        p("This app allows you to visualize the beat frequency for two sine waves: one with a frequency of 330 Hz (plotted in red) and another with a nearby frequency of your choice (plotted in blue).  The interference pattern of the two waves is plotted below in black; the \"beat frequency\" is shown in the plot title. Use the slider to the left to select the nearby frequency in Hz."),
       plotOutput("outputPlot")
    )
  )
))
