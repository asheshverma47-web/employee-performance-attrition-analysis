USE employee_dw;

-- Total Employees

SELECT COUNT(*) AS Total_Employees
FROM fact_employee_analysis;

-- Attrition Count

SELECT COUNT(*) AS Attrition_Count
FROM fact_employee_analysis
WHERE Attrition='TRUE';

-- Attrition Rate

SELECT
ROUND(
(COUNT(CASE WHEN Attrition='TRUE' THEN 1 END) * 100.0)
/
COUNT(*)
,2) AS Attrition_Rate
FROM fact_employee_analysis;

-- Retention Rate

SELECT
ROUND(
100 -
(
COUNT(CASE WHEN Attrition='TRUE' THEN 1 END) * 100.0
/
COUNT(*)
)
,2) AS Retention_Rate
FROM fact_employee_analysis;

-- Average Employee Tenure

SELECT
ROUND(AVG(Job_Tenure),2) AS Average_Tenure
FROM fact_employee_analysis;

-- Average Performance Rating

SELECT
ROUND(AVG(Performance_Rating),2) AS Average_Performance_Rating
FROM fact_employee_analysis;

-- Average Job Satisfaction

SELECT
ROUND(AVG(Job_Satisfaction),2) AS Average_Job_Satisfaction
FROM fact_employee_analysis;

-- Average Training Hours

SELECT
ROUND(AVG(Training_Hours),2) AS Average_Training_Hours
FROM fact_employee_analysis;

-- Department-wise Attrition

SELECT
Department,
COUNT(CASE WHEN Attrition='TRUE' THEN 1 END) AS Attrition_Count
FROM fact_employee_analysis
GROUP BY Department
ORDER BY Attrition_Count DESC;

-- Department-wise Performance

SELECT
Department,
ROUND(AVG(Performance_Rating),2) AS Avg_Performance_Rating
FROM fact_employee_analysis
GROUP BY Department
ORDER BY Avg_Performance_Rating DESC;

-- Department-wise Job Satisfaction

SELECT
Department,
ROUND(AVG(Job_Satisfaction),2) AS Avg_Job_Satisfaction
FROM fact_employee_analysis
GROUP BY Department
ORDER BY Avg_Job_Satisfaction DESC;

-- Department-wise Work Life Balance

SELECT
Department,
ROUND(AVG(Work_Life_Balance),2) AS Avg_Work_Life_Balance
FROM fact_employee_analysis
GROUP BY Department
ORDER BY Avg_Work_Life_Balance DESC;