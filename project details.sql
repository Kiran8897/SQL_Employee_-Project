CREATE PROCEDURE Employee_project_details (in Employee_id int)
BEGIN
select e.Employee_id,
    e.Employee_name,
    P.ProjectID,
    P.ProjectName,
    EP.Role,
    EP.Hoursperweek from employee e 
join employeeproject EP on EP.Employee_id=e.Employee_id
join project_table P on P.ProjectID = EP.ProjectID
where e.Employee_id = Employee_id;
END
