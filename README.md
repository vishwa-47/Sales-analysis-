# Sales-analysis-
This is a end to end project using pandas for cleaning, Postgresql for database management and power bi to visualize the  performance of sales
# Project summary
 This is a end to end project where I'm transforming this raw data handling wrong information, creating new columns for analysis to visually represent my thoughts on the raw data.

 file for data cleaning - <a href = "https://github.com/vishwa-47/Sales-analysis-/blob/main/data_cleaning.ipynb"> DATA CLEANING</a>

 ## step 1 - Extracting the data
-created a virtual environment in visual code editor and installed all libraries for the analysis such as (pandas, sqlalchamey, psycopg2, kaggle).
-Downloaded the dataset using kaggle framwork using the command - Kaggle datasets download "Link"
 added the dataset to DF variable.

 
## Step 2 -  Cleaning the data and preprocessing
- Analyzed the data by looking at the schema of the data and found that most of the columns were not in the right data type so had to change the sale_date column to datetime datatype.
- I Extracted two new columns for my analysis such as Quarter and month column from sale date.
- Sales amount column had incorrect values so I modified that column with new formula for accurate results.
- This data did not have null values or duplicate data to work with.
- Made sure all the column names were in correct format so used trim,lower and strip function.


## step 3 - connecting the data to database
- Used  frameworks such as SQLalchamey and psycopg2 to connect my postgre SQL and imported this data directly to my database.


## Step 4 - Answered few questions using SQL.
link for the SQL file - <a href = "https://github.com/vishwa-47/Sales-analysis-/blob/main/Project.sql"> SQL_file</a>

## step 5 - Creating dashboard using POWER BI
Images of the dashboard :
![image](https://github.com/user-attachments/assets/e13c3917-9b30-47a4-984e-59af39f9390c)
![image](https://github.com/user-attachments/assets/12095cfc-8d9f-48a1-b9b7-9d317d2ee968)
![image](https://github.com/user-attachments/assets/75af32b0-c66d-4c94-afb9-5ebd042133f7)
![image](https://github.com/user-attachments/assets/832f0f48-9243-491f-acb6-b52f225ec5d2)
![image](https://github.com/user-attachments/assets/9fcb62bf-b4ca-44d3-baef-f19b327227ac)





