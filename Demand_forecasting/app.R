library(shiny)
library(tidyverse)
library(lubridate)
library(timetk)
library(modeltime)
library(tidymodels)

ui <- fluidPage(
  titlePanel("Economic Demand Forecast Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Demand Forecast using Time Series + ML")
    ),
    
    mainPanel(
      plotOutput("forecastPlot")
    )
  )
)

server <- function(input, output) {

  output$forecastPlot <- renderPlot({

    # ==== YOUR ORIGINAL CODE (slightly cleaned) ====

    set.seed(123)
    date_seq <- seq(as.Date("2020-01-01"), as.Date("2021-12-31"), by="day")
    
    data <- tibble(
      date = date_seq,
      demand = round(100 + sin(seq_along(date_seq)/20) * 50 + rnorm(length(date_seq), 0, 10))
    )
    
    data <- data %>% arrange(date)

    split_date <- as.Date("2021-06-01")
    train_data <- data %>% filter(date < split_date)

    recipe_spec <- recipe(demand ~ date, data = train_data) %>%
      step_timeseries_signature(date) %>%
      step_fourier(date, period = 365, K = 2) %>%
      step_rm(date) %>%
      step_dummy(all_nominal_predictors(), one_hot = TRUE)

    model_spec <- boost_tree() %>%
      set_engine("xgboost") %>%
      set_mode("regression")

    model_fit <- workflow() %>%
      add_model(model_spec) %>%
      add_recipe(recipe_spec) %>%
      fit(train_data)

    future_dates <- tibble(date = seq(max(train_data$date) + 1, by="day", length.out=180))

    forecast <- modeltime_table(model_fit) %>%
      modeltime_forecast(new_data = future_dates, actual_data = train_data)

    forecast %>%
      plot_modeltime_forecast(.legend_show = TRUE, .interactive = FALSE)

  })
}

shinyApp(ui = ui, server = server)