library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Faithful Geyser eruptions"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      h3("Old Faithful"),
      br(),
      p("Old Faithful is a cone geyser located in Wyoming, in Yellowstone National Park in the United States.
        Old Faithful was named in 1870 during the Washburn-Langford-Doane Expedition and was the first geyser in the park
        to receive a name. It is one of the most predictable geographical features on Earth, erupting almost every 63 minutes.
        The geyser, as well as the nearby Old Faithful Inn, is part of the Old Faithful Historic District.
         Eruption of Old Faithful
      Name origin 	Named by Henry D. Washburn, September 18, 1870
        Location 	Upper Geyser Basin, Yellowstone National Park, Teton County, Wyoming
        Coordinates 	44.460479N -110.8281591
        [1]Elevation 	7,349 feet (2,240 m) [2]
        Type 	Cone geyser
        Eruption height 	106 feet (32 m) to 185 feet (56 m)
        Frequency 	45 to 125 minutes
        Duration 	1.5 to 5 minutes
        Discharge 	3,700 US gallons (14 m3) to 8,400 US gallons (32 m3)
        "),
      img(src="old-faithful.jpg", height = 200, width = 200)
      ),



    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      p("The plot above shows the duration of the eruptions. With the slider below you can choose the number of time intervals (bins)"),
      br(),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    )
  )
))
