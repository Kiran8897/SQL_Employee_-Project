SELECT 
    e.Employee_id,
    e.Employee_name,
    e.Employee_age,
    e.Emp_Salary,
    e.Gender,
    e.JobTitle,
	e1.ManagerID
FROM 
    employee e
join employee  e1 on e.ManagerID = e1.Employee_id
ORDER BY 
    e1.Employee_name;

