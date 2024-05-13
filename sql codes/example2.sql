-- SQL File Example with General Commands

-- Create a new table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Title NVARCHAR(50),
    DepartmentID INT,
    ManagerID INT,
    HireDate DATETIME,
    Salary DECIMAL(18, 2)
);

-- Insert data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, DepartmentID, ManagerID, HireDate, Salary)
VALUES (1, 'John', 'Doe', 'Manager', 10, NULL, '2022-01-01', 75000.00),
       (2, 'Jane', 'Doe', 'Developer', 20, 1, '2022-02-01', 60000.00),
       (3, 'Bob', 'Smith', 'Tester', 30, 2, '2022-03-01', 50000.00);

-- Delete data from the table
DELETE FROM Employees
WHERE EmployeeID = 3;

-- Update data in the table
UPDATE Employees
SET Salary = 65000.00
WHERE EmployeeID = 2;

-- Select data from the table
SELECT * FROM Employees;

-- Create a stored procedure
CREATE PROCEDURE GetEmployeeByID
    @EmployeeID INT
AS
BEGIN
    SELECT * FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;

-- Execute the stored procedure
EXEC GetEmployeeByID 1;

-- Create a view
CREATE VIEW EmployeeView
AS
    SELECT EmployeeID, FirstName, LastName, Title
    FROM Employees;

-- Create a user-defined function
CREATE FUNCTION GetEmployeeName (@EmployeeID INT)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @Name NVARCHAR(100);

    SELECT @Name = FirstName + ' ' + LastName
    FROM Employees
    WHERE EmployeeID = @EmployeeID;

    RETURN @Name;
END;

-- Execute the user-defined function
SELECT dbo.GetEmployeeName(1);