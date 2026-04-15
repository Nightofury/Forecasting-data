Economic Insights and Demand Forecasting Dashboard

This project is an end-to-end analytical application designed to model, analyze, and forecast demand using time series and machine learning techniques. It demonstrates how economic and business data can be transformed into actionable insights through visualization and predictive modeling.

Overview

The application integrates R-based analytics with machine learning workflows to generate demand forecasts and visualize trends over time. A Shiny-based interface enables interactive exploration of results, simulating real-world economic analytics systems.

Features
Interactive dashboard built using Shiny
Time series forecasting using machine learning models
Feature engineering with temporal and seasonal components
Demand prediction using XGBoost
Visualization of historical and forecasted trends
Structured and reproducible analytical workflow
Tech Stack

Languages:

R
Python
SQL (conceptual integration)

Libraries and Tools:

tidyverse, lubridate, timetk, modeltime, tidymodels
XGBoost, scikit-learn, pandas, NumPy
Shiny for dashboard development
Plotly for interactive visualization
Project Structure
economic-insights-dashboard/
  app.R
  demand_forecast.py
  README.md
Installation and Setup
1. Clone the Repository
git clone https://github.com/your-username/economic-insights-dashboard.git
cd economic-insights-dashboard
2. Install R Dependencies

Open R or VS Code terminal and run:

install.packages(c(
  "shiny",
  "tidyverse",
  "lubridate",
  "timetk",
  "modeltime",
  "tidymodels",
  "plotly"
))
3. Install Python Dependencies

Make sure Python is installed, then run:

pip install pandas numpy scikit-learn xgboost matplotlib
4. Run the Application

Start R and run:

library(shiny)
runApp("app.R")

The application will launch in your browser.

Methodology

The project applies time series feature engineering combined with gradient boosting techniques to model demand patterns. Seasonal effects are captured using Fourier transformations and temporal features such as day, week, and month. The trained model is used to forecast future demand over a defined horizon.

Use Cases
Demand forecasting and trend analysis
Economic data exploration
Business intelligence applications
Time series modeling and experimentation
Key Highlights
Combines R and Python in a unified workflow
Demonstrates real-world forecasting techniques
Emphasizes clarity, reproducibility, and modular design
Designed to simulate production-level analytical systems
