CREATE PROCEDURE Get_Employee_attend(IN input_date DATE)
BEGIN
    SELECT 
        e.Employee_id,
        e.Employee_name,
        a.Status,
        a.Date,
        a.CheckInTime,
        a.CheckOutTime
    FROM 
        employee e
    JOIN 
        attendance a ON e.Employee_id = a.Employee_id
    WHERE 
        a.Date = input_date;
END;
