📌 Project Overview
This project analyzes Uber ride request data using:
Excel for data cleaning
SQL for generating insights
Python for exploratory data analysis (EDA)
Excel Dashboards for visualization

The main goal is to identify trends in ride requests, cancellations, car availability, and other operational challenges to improve Uber’s ride allocation and customer experience.

🗃️ Dataset
The dataset contains information on:
request_id
pickup_point (City or Airport)
driver_id
status (Trip Completed, Cancelled, No Cars Available)
request_timestamp and drop_timestamp

🧹 Data Cleaning (Excel)
Handled missing values in driver_id and drop_timestamp
Standardized date-time formats
Extracted features: request_date, request_hour
Checked for and confirmed no duplicate request_ids
Cleaned data saved in .xlsx format

🧠 SQL Insights
Insights generated include:
Trip status distribution
Requests by pickup point and status
Peak request hours and cancellation trends
"No Cars Available" breakdown by pickup point
Completion rates and weekday patterns

📊 Exploratory Data Analysis (Python)
Performed analysis using visualizations like:
Bar charts for trip status distribution
Line plots for hourly request trends
Stacked bars for pickup point comparison
Trip duration statistics

📈 Dashboard
Created an interactive Excel dashboard summarizing:
Request trends
Status distributions
Pickup point issues


✅ Conclusions
Most ride failures occur during peak hours due to lack of available cars.
The airport location faced the highest number of unfulfilled requests.
Efficient driver scheduling and resource allocation are necessary.

💡 Recommendations
Deploy more cars during morning and evening peak hours
Improve airport car availability
Optimize driver shift timings using demand patterns
Use historical data for better demand forecasting
