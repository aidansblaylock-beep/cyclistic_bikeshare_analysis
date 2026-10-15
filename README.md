# Cyclistic Bike-Share Analysis
Google Data Analytics Capstone Project

## Project Overview
This project is part of the Google Data Analytics Certificate. The goal is to analyze 12 months of historical trip data for Cyclistic (a fictional bike-share company in Chicago) to understand how annual members and casual riders use the service differently. 

The ultimate objective is to provide marketing leadership with data-driven recommendations for converting casual riders into annual members.

* **Tableau Dashboard:** https://public.tableau.com/views/CyclisticDashboard_17918560364040/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
* **Presentation Deck:** https://docs.google.com/presentation/d/1mtERYkvz9uIOdiIAP81W89oejf6vOkf3G-fT9opS6oA/edit?usp=sharing

## Data & Tools
* **Data Source:** 12 months of public Divvy trip data.
* **BigQuery (SQL):** Used for data cleaning, filtering out test stations (like Hastings Test Station) and invalid ride durations, and extracting temporal variables.
* **Tableau Public:** Used to build a 2x2 interactive dashboard summarizing the core insights.
* **Google Slides:** Used to build the final stakeholder presentation.

## Key Findings
1. **Volume vs. Duration:** Annual members account for the majority of total rides (~65%), but casual riders stay on the bikes much longer on average (~20.6 minutes vs. ~12.7 minutes).
2. **Weekly Behavior:** Members use the bikes heavily during the work week (Monday–Friday) with peaks around standard commute hours (8 AM and 5 PM). Casual riders spike heavily on weekends.
3. **Bike Preferences:** Electric bikes are the top choice across both user groups, though classic bikes still see strong usage for recreational rides.

## Recommendations
1. **Weekend & Seasonal Passes:** Offer flexible passes targeted at weekend leisure riders to bridge the gap toward annual membership.
2. **Geotargeted Ads:** Place digital ads and signage near popular recreational spots during peak weekend hours (1 PM–5 PM).
3. **In-App Triggers:** Send post-ride push notifications after long trips showing users how much money they could save with an annual membership.

## Repository Layout
* `sql/01_data_cleaning.sql`: Data filtering and transformation queries.
* `sql/02_data_analysis.sql`: Aggregations and metric calculations for the analysis.
* `cyclistic_presentation.pdf`: The slide deck presented to stakeholders.
