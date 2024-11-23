# Employee Data Analysis for HR Departments

## Overview

This project focuses on preparing, cleaning, and visualizing employee data for business HR departments. The goal is to streamline data management and analysis, enabling HR professionals to make informed decisions based on reliable data.

The project involves the following key steps:
1. **Data Preparation and Cleaning**: Performed using **MySQL Workbench**.
2. **Data Visualization**: Developed interactive dashboards using **Power BI**.


## Project Features

### Data Preparation
- Removed duplicates and handled missing values to ensure data consistency.
- Normalized and structured data to focus on key attributes like:
  - Employee roles
  - Salaries
  - Performance metrics
  - Demographics

### Data Cleaning
- Standardized column names and data formats.
- Applied SQL transformations to maintain data integrity.
- Merged, filtered, and aggregated data for better usability in reporting.

### Data Visualization
- Created Power BI dashboards with the following insights:
  - Employee demographic breakdowns.
  - Salary distributions by department and role.
  - Performance trends and metrics.
  - Key HR insights to assist decision-making.

## Tools Used

- **MySQL Workbench**: For SQL-based data cleaning and preparation.
- **Power BI**: For designing visualizations and creating dashboards.
- **Employee Dataset**: Hypothetical data representing key HR metrics and details.

## How to Run the Project

### Prerequisites
- **MySQL Workbench**: Installed and configured.
- **Power BI Desktop**: Installed for data visualization.
- A valid connection to the prepared MySQL database or exported dataset.

### Steps
1. **Clone the Repository**:
   ```
   git clone <repository-url>
   ```


3. **Import Data**:
- Load the raw employee data into your MySQL database.
- Run the provided SQL scripts in MySQL Workbench to clean and prepare the data.
  
3. **Export Cleaned Data**:
- Export the cleaned data from MySQL as a CSV or directly integrate with Power BI.
  
4. **Visualize Data**:
- Open the Power BI file (EmployeeDashboard.pbix) to explore the visualizations.
- Modify or extend the dashboards as needed.

## Key Visuals in Power BI

- **Employee Demographics**: Gender, age group, and tenure visualized through bar charts and pie charts.
- **Salary Analysis**: Salary ranges by department, role, and performance level.
- **Attrition Rates**: Highlighted trends in employee turnover and retention.
- Performance Metrics: Key indicators to evaluate team and individual achievements.

## Future Work

- Incorporate advanced predictive analytics to identify trends in employee attrition.
- Expand dataset to include more HR-relevant KPIs, such as training effectiveness and satisfaction scores.
- Automate the pipeline from MySQL to Power BI for real-time updates.

## Contact

For questions or contributions, please reach out via elie.disso@gmail.com
