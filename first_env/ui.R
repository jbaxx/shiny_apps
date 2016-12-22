shinyUI(fluidPage(
    titlePanel("Title Panel"),
    sidebarLayout(
        sidebarPanel(
            h2("Menu"),
            br(),
            h4("Actionbutton"),
            actionButton("per", label = "Perform"),
            br(),
            h4("Submitbutton"),
            submitButton(text = "Submit"),
            br(),
            h4("Single CheckBox"),
            checkboxInput("checkbox", label = "Choice A", value = F),
            br(),
            h4("CheckBox Group"),
            checkboxGroupInput("checkGroup", label = h3("CheckBox Group"),
                               choices = list(
                                   "Choice 1" = 1,
                                   "Choice 2" = 2,
                                   "Choice 3" = 3),
                               selected = c(2,3)),
            br(),
            h4("Dates"),
            dateInput("date", label = h3("Date Input")),
            br(),
            h4("Dates Ranges"),
            dateRangeInput("dates", label = h3("Date Range")),
            br(),
            h4("File"),
            fileInput("file", label = "File Input"),
            br(),
            h4("Slider Input"),
            sliderInput("obs", label = "Number of Observations",
                        min = 1, max = 1000, value = 200),
            sliderInput("slider1", label = h3("Slider"), min = 0, 
                        max = 100, value = 50)
                     ),
        mainPanel(
            h2("Main"),
            br(), br(),
            img(src = "iris_flor.jpg", height = 150, width = 200),
            p("This famous (Fisher’s or Anderson’s)", a("iris", href = "http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html"), "data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are", strong("Iris setosa, versicolor, and virginica.")),
            h2("Analysis"),
            verbatimTextOutput("value")
        )
    )
))


