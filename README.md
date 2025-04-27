# Sales-analysis-
This is a end to end project using pandas for cleaning, Postgresql for database management and power bi to visualize the  performance of sales
# Project summary
 This is a end to end project where I'm transforming this raw data handling wrong information, creating new columns for analysis to visually represent my thoughts on the raw data.

 ## step 1 - Extracting the data
-created a virtual environment in visual code editor and installed all libraries for the analysis such as (pandas, sqlalchamey, psycopg2, kaggle).
-Downloaded the dataset using kaggle framwork using the command - Kaggle datasets download "Link"
 added the dataset to DF variable.

 
## Step 2 -  Cleaning the data and preprocessing
-Analyzed the data by looking at the schema of the data and found that most of the columns were not in the right data type so had to change the sale_date column to datetime datatype.
-I Extracted two new columns for my analysis such as Quarter and month column from sale date.
- Sales amount column had incorrect values so I modified that column with new formula for accurate results.
- This data did not have null values or duplicate data to work with.
- Made sure all the column names were in correct format so used trim,lower and strip function.


## step 3 - connecting the data to database
- Used  frameworks such as SQLalchamey and psycopg2 to connect my postgre SQL and imported this data directly to my database.


## Step 4 - Answered few questions using SQL.
link for the SQL file - <a href = "https://github.com/vishwa-47/Sales-analysis-/blob/main/Project.sql"> SQL_file</a>

