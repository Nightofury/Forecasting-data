Economic Insights and Demand Forecasting Dashboard

This project is an end-to-end analytical application designed to model, analyze, and forecast demand using time series and machine learning techniques. It demonstrates how economic and business data can be transformed into actionable insights through visualization and predictive modeling.

Overview

The application integrates R-based analytics with machine learning workflows to generate demand forecasts and visualize trends over time. A Shiny-based interface enables interactive exploration of the results.

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
Methodology

The project uses a combination of time series feature engineering and gradient boosting techniques to model demand patterns. Seasonal effects are captured using Fourier terms and temporal features such as day, month, and year. The trained model is then used to forecast future demand over a defined horizon.

Use Cases
Demand forecasting and trend analysis
Economic data exploration
Business decision support
Time series modeling demonstrations
Key Highlights
Combines R and Python in a single analytical workflow
Focuses on scalability and reproducibility
Demonstrates practical application of machine learning in forecasting
Provides a foundation for extending into production-grade systems
