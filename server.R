library(shiny)
shinyServer(function(input, output) {
  output$outputPlot <- renderPlot({
    f1 <- input$f
    f2 <- 330
    t <- seq(0,0.1,0.0001)
    t2 <- seq(0,0.5,0.0001)
    par(mfrow=c(2, 1))
    title <- paste('Wave Frequencies:', f1, 'and', f2, 'Hz')
    plot(t, sin(2*pi*f1*t), col='blue', type='l', lwd=2, xlab='time', 
         ylab='wave amplitudes', main=title)
    lines(t, sin(2*pi*f2*t), col='red', type='l', lwd=2)
    title2 <- paste('Beat Frequency:', abs(f1-f2), 'Hz')
    plot(t2, sin(2*pi*f1*t2) - sin(2*pi*f2*t2), col='black', type='l', 
         lwd=2, xlab='time', ylab='summed amplitudes', main=title2)
  })
  
})
