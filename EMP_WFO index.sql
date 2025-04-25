CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_wfo_status`(IN emp_id INT)
BEGIN
    SELECT 
        e.Employee_id,
        e.Employee_name,
        a.Status,
        a.Date,
        a.CheckInTime,
        a.CheckOutTime,
        TIMESTAMPDIFF(HOUR, a.CheckInTime, a.CheckOutTime) AS HoursWorked,
        CASE 
            WHEN TIMESTAMPDIFF(HOUR, a.CheckInTime, a.CheckOutTime) < 9 THEN 'Below 9hrs'
            ELSE 'Met 9hrs'
        END AS wfh_status
    FROM 
        employee e
    JOIN 
        attendance a ON e.Employee_id = a.Employee_id
    WHERE 
        a.CheckInTime IS NOT NULL 
        AND a.CheckOutTime IS NOT NULL
        AND e.Employee_id = emp_id;
END;
