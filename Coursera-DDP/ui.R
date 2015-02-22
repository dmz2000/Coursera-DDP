library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Visualization of Motor Trend Car Dataset"),
  
  # Sidebar with a selection for the variable to plot
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", label = h4("Select Variable:"),
          choices = list("Number of Cylinders" = "cyl",
                         "Displacement (cu.in.)" = "disp",
                         "Gross Horsepower" = "hp",
                         "Weight (lb/1000)" = "wt",
                         "Transmission" = "am",
                         "Number of Forward Gears" = "gear"),
          selected = "wt")
    ),
    
    # Show a plot of MPG vs selected variable
    mainPanel(
      h4("Documentation  - Getting Started:"),
      p("The mtcars dataset  inspects fuel consumption (in miles per gallon) based on different aspects of car design features. 
        The purpose of the application is to allow the user to visualize the relationship between MPG and a selected design variable.
        To get started on exploring the relationships, select a variable from the dropdown menu to the left: "),
      br(),
      
      p("Selected variable"),
      verbatimTextOutput("variable"),
      p("Exploration of Variable Relationships"),
      plotOutput("myplot")
    )
  )
))
