USE employee_dw;

INSERT INTO fact_employee_analysis
(
    Employee_ID,
    Age,
    Department,
    Job_Role,
    Job_Tenure,
    Performance_Rating,
    Training_Hours,
    Work_Life_Balance,
    Job_Satisfaction,
    Attrition,
    Exit_Interview_Score
)
SELECT
    e.Employee_ID,
    e.Age,
    e.Department,
    e.Job_Role,
    e.Job_Tenure,
    p.Performance_Rating,
    p.Training_Hours,
    p.Work_Life_Balance,
    p.Job_Satisfaction,
    a.Attrition,
    a.Exit_Interview_Score
FROM dim_employee e
LEFT JOIN dim_performance p
    ON e.Employee_ID = p.Employee_ID
LEFT JOIN dim_attrition a
    ON e.Employee_ID = a.Employee_ID;