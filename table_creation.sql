USE employee_dw;

CREATE TABLE dim_employee (
    Employee_ID INT PRIMARY KEY,
    Age INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    Gender VARCHAR(50),
    Department VARCHAR(50),
    Job_Role VARCHAR(100),
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(50),
    Job_Tenure INT,
    Distance_From_Home INT
);

CREATE TABLE dim_performance (
    Employee_ID INT PRIMARY KEY,
    Performance_Rating INT,
    Last_Promotion_Year INT,
    Training_Hours INT,
    Work_Life_Balance INT,
    Job_Satisfaction INT
);

CREATE TABLE dim_attrition (
    Employee_ID INT,
    Attrition VARCHAR(10),
    Exit_Interview_Score INT
);

CREATE TABLE fact_employee_analysis (
    Employee_ID INT,
    Age INT,
    Department VARCHAR(50),
    Job_Role VARCHAR(100),
    Job_Tenure INT,
    Performance_Rating INT,
    Training_Hours INT,
    Work_Life_Balance INT,
    Job_Satisfaction INT,
    Attrition VARCHAR(10),
    Exit_Interview_Score INT
);