library(shiny)

thumbnail_function <- function(videourl, title, description) {
  return(
    div(class='thumbnail',
        div(class='embed-responsive embed-responsive-16by9',
            tags$iframe(class='embed-responsive-item', src=videourl))))
  }
  
#  <div class="thumbnail">
#  <div class="embed-responsive embed-responsive-16by9">
#  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/hou0lU8WMgo" allowfullscreen></iframe>
#  </div>
#  <div class="caption">
#  <h3>You are technically correct</h3>
#  <div>The best kind of correct!</div>
#  </div>
#  </div>


# Define UI for YouTube player --------------------------------------
ui <- fluidPage(
  includeHTML(thumbnail_function(videourl='https://www.youtube.com/embed/hou0lU8WMgo'))
)

# Define server logic -----------------------------------------------
server <- function(input, output, session) {
  
}

# Run the app -------------------------------------------------------
shinyApp(ui, server)
