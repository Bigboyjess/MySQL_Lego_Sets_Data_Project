# MySQL_Lego_Set_Data_Project
data analytics project exploring LEGO set releases from 1975 through 2025. The project uses MySQL for data screening and analysis, then R (ggplot2) to create data visualizations from the SQL query results.

The original CSV contains 18,540 rows and 10 fields For every LEGO set released from 1975-2025.
MySQL query Goals:
- Examine how many LEGO sets were released each year.
- Identify the years with the most releases.
- Explore whether LEGO sets have become larger over time.
- Compare set characteristics across decades.
- Investigate minifigure counts, popular themes, year-over-year release changes, the largest sets, and color variety.
- Screen the data for out-of-range values, invalid negative counts, and duplicate set IDs.
Repository structure
MySQL_Lego_Set_Data_Project/
├── datasets/
│   ├── lego_sets.csv             # Main dataset
│   ├── A1.csv ... A8.csv         # Results for SQL analyses
│   └── A1.5.csv
├── datascreening/                # Dataset checks (C1–C3)
├── analysis/                     # Analysis queries (A1–A8)
├── R/
│   └── data_visual_code.R        # R script
├── data_visualizations/          # Data visualization PDFs
└── README.md
Tools
- MySQL — load the CSV, queries, and data analysis.
- R (ggplot2) — visualize exported query results.
Getting started:
1. Load the dataset into MySQL
Create or select a database, then import datasets/lego_sets.csv and use your preferred CSV import method.
Name the destination table:
lego_sets
The SQL files use a table named "lego_sets" with these columns:
set_num	
name	
year	
theme_name	
parent_theme	
num_parts	
num_minifigs	
num_unique_colors	
has_minifigs
img_url	


Ensure the imported column names match these names. The numerical columns should be imported as numeric types, text and URL fields should be text types. Missing values should remain NULL.
2. Run the data-screening queries
Run the scripts in datascreening/ against the lego_sets table:
- C1 — Checking the range: checks the minimum and maximum years and the number of distinct years.
- C2 — Checking for invalid values: returns rows with years outside 1975–2025 or negative part, minifigure, or unique-color counts.
- C3 — Checking IDs: identifies set_num values that occur more than once.
Review the results before proceeding. These scripts identify potential data issues.
3. Run the analysis queries
Run the SQL files in analysis/. Each query returns a result set for a particular question:
Query	Analysis
A1	Number of LEGO sets released per year
A1.5	Top 10 years by number of set releases
A2	Yearly average and maximum part counts
A3	Set counts and average parts, minifigures, and unique colors by decade
A4	Yearly average, maximum, and total minifigure counts; sorted by total minifigures
A5	Top 15 themes by number of sets, with average parts and minifigures
A6	Year-over-year changes in set releases, including percentage change
A7	Top 20 largest sets by part count
A8	Yearly average and maximum number of unique colors


4. Export query results
Export each analysis result as a CSV into the datasets/ folder, using the filenames expected by the R script:
- A1.csv, A1.5.csv, and A2.csv through A8.csv.
The repository includes CSV files with these names.
5. Create the visualizations in R
2. Install the tidyverse package if it is not already installed(Within RStudio):
   install.packages("tidyverse")
3. Open R/data_visual_code.R and run it.
4. When prompted by file.choose(), select the corresponding analysis CSV files in this order: A1.csv, A1.5.csv, A2.csv, A3.csv, A4.csv, A5.csv, A6.csv, and A7.csv, A8.csv.
The script currently generates four ggplot charts: yearly releases (A1), average parts per set by year (A2), set counts by theme (A5), and the 20 largest sets (A7). data_visualizations/ contains all four of the PDF chart exports.

Purpose for project:
First personal portfolio and practice project I created to practice skills in data analysis and data visualization. Thank you for checking out my project :)
