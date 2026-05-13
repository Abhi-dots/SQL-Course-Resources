-- PRACTICE TABLE (RUN BELOW CODE TO CREATE EMPLOYEES1 TABLE) --
----------------------------------------------------------------
CREATE TABLE employees1 (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    email VARCHAR(100),
    joining_date DATE
);

SET NOCOUNT ON;

DECLARE @i INT = 1;

WHILE @i <= 100000
BEGIN

    INSERT INTO employees1
    (
        emp_name,
        department,
        salary,
        city,
        email,
        joining_date
    )
    VALUES
    (
        'Employee_' + CAST(@i AS VARCHAR),

        CASE
            WHEN @i % 5 = 0 THEN 'IT'
            WHEN @i % 5 = 1 THEN 'HR'
            WHEN @i % 5 = 2 THEN 'Finance'
            WHEN @i % 5 = 3 THEN 'Sales'
            ELSE 'Marketing'
        END,

        30000 + (@i % 70000),

        CASE
            WHEN @i % 6 = 0 THEN 'Bangalore'
            WHEN @i % 6 = 1 THEN 'Hyderabad'
            WHEN @i % 6 = 2 THEN 'Chennai'
            WHEN @i % 6 = 3 THEN 'Pune'
            WHEN @i % 6 = 4 THEN 'Mumbai'
            ELSE 'Delhi'
        END,

        'employee' + CAST(@i AS VARCHAR) + '@gmail.com',

        DATEADD(DAY, -(@i % 3650), GETDATE())
    );

    SET @i = @i + 1;

END;