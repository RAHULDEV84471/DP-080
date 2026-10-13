
-- Create a dedicated training database
USE master;
GO


    CREATE DATABASE DP080_SQLCategories;

GO

USE DP080_SQLCategories;
GO


create table demo1
(id int, name varchar(50))



create schema sales

select @@SERVERNAME

CREATE TABLE sales.Customer (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) ,
    Phone VARCHAR(20),
    BirthDate DATE,
    IsActive BIT DEFAULT 1	
);



create table sales.demo1
(id int, name varchar(50))

--money is acurrency datatype where we have four decimal places used for currency column

select * from sales.Customer


CREATE TABLE Demo_DataTypes
(
    -- Numeric data types
    ID INT PRIMARY KEY,
    BigNumber BIGINT,
    Price DECIMAL(10,2),
    Rating FLOAT,

    -- String data types
    Name VARCHAR(100),
    Description NVARCHAR(200),
    Code CHAR(5),

    -- Date and Time data types
    CreatedDate DATE,
    UpdatedDateTime DATETIME2,
    EventTime DATETIMEOFFSET,

    -- Binary data type
    FileData VARBINARY(MAX),

    -- Special data types
    UniqueID UNIQUEIDENTIFIER,
    XmlData XML,
    JsonData NVARCHAR(MAX)
);


-- Step 2: Insert sample data

INSERT INTO Demo_DataTypes
(
    ID,
    BigNumber,
    Price,
    Rating,
    Name,
    Description,
    Code,
    CreatedDate,
    UpdatedDateTime,
    EventTime,
    FileData,
    UniqueID,
    XmlData,
    JsonData
)
VALUES
(
    1,
    8765432109,
    2499.75,
    4.7,
    'Peter',
    N'Senior Data Engineer working with SQL Server',
    'P1023',
    '2024-03-20',
    SYSDATETIME(),
    SYSDATETIMEOFFSET(),
    0x506574657246696C65,
    NEWID(),
    '<Employee><Name>Peter</Name><Role>Data Engineer</Role></Employee>',
    '{ "Name": "Peter", "Role": "Data Engineer", "Experience": 5 }'
),
(
    2,
    3456789012,
    799.25,
    4.2,
    'Amy',
    N'Data Analyst working with Power BI',
    'A4056',
    '2023-09-12',
    SYSDATETIME(),
    SYSDATETIMEOFFSET(),
    0x416D7946696C65,
    NEWID(),
    '<Employee><Name>Amy</Name><Role>Data Analyst</Role></Employee>',
    '{ "Name": "Amy", "Role": "Data Analyst", "Experience": 3 }'
);


Select * from Demo_DataTypes

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
AND TABLE_NAME = 'Demo_DataTypes'
ORDER BY ORDINAL_POSITION;



-- Create a table for the demonstrations
CREATE TABLE dbo.Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);
GO

-- Insert initial sample records
INSERT INTO dbo.Employees
    (EmployeeID, EmployeeName, Department, Salary)
VALUES
    (101, 'Rahul', 'IT', 50000),
    (102, 'Priya', 'HR', 60000),
    (103, 'Amit', 'Finance', 55000);
GO

-- Verify the setup
SELECT * FROM dbo.Employees;
GO

USE DP080_SQLCategories;
GO

-- CREATE: Create a new table
CREATE TABLE dbo.Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
GO

-- ALTER: Add a new column to an existing table
ALTER TABLE dbo.Employees
ADD JobTitle VARCHAR(50) NULL;
GO

-- Verify the table structure
EXEC sp_help 'dbo.Employees';
GO

-- INSERT: Add a new employee
INSERT INTO dbo.Employees
    (EmployeeID, EmployeeName, Department, Salary)
VALUES
    (104, 'Neha', 'IT', 62000);

-- UPDATE: Change an employee's salary
UPDATE dbo.Employees
SET Salary = 65000
WHERE EmployeeID = 104;

-- DELETE: Remove the employee record we just inserted
DELETE FROM dbo.Employees
WHERE EmployeeID = 104;

-- Check the final data
SELECT * FROM dbo.Employees;
GO

-- Retrieve all columns and rows
SELECT *
FROM dbo.Employees;

-- Retrieve specific columns
SELECT EmployeeName, Department, Salary
FROM dbo.Employees;

-- Filter the records
SELECT EmployeeName, Salary
FROM dbo.Employees
WHERE Salary > 55000;

-- Sort the results
SELECT EmployeeName, Salary
FROM dbo.Employees
ORDER BY Salary DESC;
GO

drop table employees

select * from emp

truncate table emp

delete from emp
where employeeid<10
-------------------------------------------------------------------------------------------------------------------


CREATE TABLE Emp (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    HireDate DATETIME,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    IsActive BIT
)

INSERT INTO Emp
VALUES
    (1, 'John', 'Doe', '1990-05-15', '2010-07-01', 60000.00, 101, 1),
    (2, 'Jane', 'Smith', '1985-12-20', '2008-03-15', 75000.50, 102, 1),
    (3, 'Michael', 'Johnson', '1992-08-10', '2015-02-28', 55000.75, 101, 0),
    (4, 'Emily', 'Brown', '1988-04-05', '2012-11-10', 80000.00, 103, 1),
    (5, 'William', 'Miller', '1995-02-28', '2018-09-05', 70000.25, 102, 1),
    (6, 'Olivia', 'Davis', '1987-09-12', '2013-06-20', 65000.50, 103, 1),
    (7, 'James', 'Wilson', '1993-11-08', '2016-04-03', 90000.00, 101, 1),
    (8, 'Sophia', 'Martinez', '1986-06-25', '2009-08-15', 72000.75, 102, 1),
    (9, 'Alexander', 'Anderson', '1991-03-18', '2014-01-12', 58000.00, 103, 0),
    (10, 'Ava', 'Garcia', '1989-07-30', '2011-10-25', 85000.50, 101, 1),
    (11, 'Daniel', 'Taylor', '1994-01-22', '2017-07-08', 62000.75, 102, 1),
    (12, 'Mia', 'Clark', '1984-10-05', '2007-05-18', 77000.00, 103, 1),
    (13, 'Ethan', 'Hernandez', '1996-04-15', '2019-12-01', 69000.25, 101, 1),
    (14, 'Chloe', 'Lopez', '1983-12-08', '2006-02-14', 92000.50, 102, 1),
    (15, 'Liam', 'Williams', '1997-09-03', '2020-06-05', 80000.75, 103, 1),
    (16, 'Emma', 'Jackson', '1982-05-20', '2005-09-30', 54000.00, 101, 1),
    (17, 'Benjamin', 'Moore', '1998-02-10', '2021-03-12', 78000.50, 102, 1),
    (18, 'Avery', 'White', '1981-08-22', '2004-12-24', 67000.75, 103, 1),
    (19, 'Logan', 'Harris', '1999-06-18', '2022-01-18', 94000.00, 101, 1),
    (20, 'Grace', 'Martin', '1980-11-28', '2003-07-09', 71000.25, 102, 1)


CREATE TABLE Dept (
    DepartmentID INT,
    DeptName NVARCHAR(50) NOT NULL,
    ManagerID INT,
    Location NVARCHAR(100),
    EstablishedDate DATE,
    Budget DECIMAL(15, 2)
)

INSERT INTO Dept (DepartmentID, DeptName, ManagerID, Location, EstablishedDate, Budget)
VALUES
    (101, 'Finance', 201, 'New York', '2000-05-15', 1000000.00),
    (102, 'Human Resources', 202, 'Chicago', '1998-09-22', 800000.50),
    (103, 'Information Technology', 203, 'San Francisco', '2005-02-10', 1500000.75),
    (104, 'Marketing', 204, 'Los Angeles', '2008-11-30', 1200000.25),
    (105, 'Operations', 205, 'Dallas', '2013-06-18', 900000.00)

select * from emp

select * from Dept



DQL(Data Query Language)

-- DQL(Data Query Language)
/*
DQL is a set of of SQL statement and clauses that allows getting data from the database and imposing orders upon it. It includes the SELECT statement along with FROM, WHERE, GROUP BY, HAVING, ORDER BY, DISTINCT. This command allows getting the data out of the database to perform operations with it.
*/

-- SELECT

-- The SELECT statement is the core command for querying data from a database. It allows you to specify columns, tables, conditions, and sorting criteria to retrieve specific data.

-- FROM

-- The FROM clause is used in conjunction with the SELECT statement to specify the table or tables from which to retrieve data. FROM does not work without SELECT statement.

use AdventureWorks2016

-- Selecting all the columns from a table

select * from HumanResources.Employee

-- Specific Columns

select BusinessEntityID,JobTitle,BirthDate
from HumanResources.Employee

-- WHERE 

-- The WHERE clause is used to filter the rows returned by SELECT statement based on a specific condition

-- Qry 1

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where OrganizationLevel > 3

-- Qry 2

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where BusinessEntityID in(5,7,77,23,65,95,110)

-- Retrieve employees not assigned to specific departments
SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID  not IN (2, 5, 7);

 
-- GROUP BY
/*
The GROUP BY clause groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns
--here rows collapse which are present for unique value of column used in group by
-- when using group by , in the select statement we can only have aggreagted function and the column used in group by-it makes sense 
*/

select jobtitle,count(BusinessEntityID) as 'CountOfEmps'
from HumanResources.Employee 
group by JobTitle

--multiple column in group by- by using multiple columns in group by we are simple creating combination of those columns and then if we are getting multiple rows for those column , those rows will collapse by performing aggregate function on them


-- HAVING

-- The HAVING clause is used in conjunction with the GROUP BY clause to filter the results of aggregate functions.
-- The HAVING clause was added to SQL because the WHERE clause cannot be used with aggregate functions.

select jobtitle,count(BusinessEntityID) as 'CountOfEmps'
from HumanResources.Employee 
group by JobTitle
having count(BusinessEntityID) > 10

--having clause performs filteration in groups i.e., on column included in group by and aggregated function
--in above example it can perform filteration on jobtitle and count(businessentityid)

--but if we want to perform filteration on jobtitle use where because of context of optimization as that will execute first and filter out no. of rows not required.


-- DISTINCT

-- The DISTINCT keyword is used to retrieve unique values in a specified column or combination of columns:

select firstname from person.person

select firstname,count(firstname)
from person.person
group by firstname

select distinct firstname from person.person

-- ORDER BY

-- The ORDER BY clause is used to sort the result set based on one or more columns, either in ascending order or descending order.

select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by countofemp			--by default asc

-- Descending

select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by countofemp desc

-- or


select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by count(BusinessEntityID) desc


/*
We write the query like this:

1. SELECT 
2. DISTINCT
3. FROM
4. JOIN
5. WHERE
6. GROUP BY 
7. HAVING
8. ORDER BY
*/

-- The QUERY actually is exeuted in the background like this :

/*
1. FROM
2. JOIN
3. WHERE
4. GROUP BY 
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9 top
*/

select * from emp WHERE EMPLOYEEID <15
ORDER BY DEPARTMENTID ASC

    select distinct departmentid, avg(salary) as avg_sal
    from emp
    where employeeid<15
    group by departmentid 
    having avg(salary)>50000
    order by avg_sal


        select distinct  top 2 departmentid, avg(salary) as avg_sal
    from emp
    where employeeid<15
    group by departmentid 
    having avg(salary)>50000
    order by avg_sal

/*
1. FROM and JOINs
The FROM clause, and subsequent JOINs are first executed to determine the total working set of data that is being queried. This includes subqueries in this clause, and can cause temporary tables to be created under the hood containing all the columns and rows of the tables being joined.

2. WHERE
Once we have the total working set of data, the first-pass WHERE constraints are applied to the individual rows, and rows that do not satisfy the constraint are discarded. Each of the constraints can only access columns directly from the tables requested in the FROM clause. Aliases in the SELECT part of the query are not accessible in most databases since they may include expressions dependent on parts of the query that have not yet executed.

3. GROUP BY
The remaining rows after the WHERE constraints are applied are then grouped based on common values in the column specified in the GROUP BY clause. As a result of the grouping, there will only be as many rows as there are unique values in that column. Implicitly, this means that you should only need to use this when you have aggregate functions in your query.

4. HAVING
If the query has a GROUP BY clause, then the constraints in the HAVING clause are then applied to the grouped rows, discard the grouped rows that don't satisfy the constraint. Like the WHERE clause, aliases are also not accessible from this step in most databases.

5. SELECT
Any expressions in the SELECT part of the query are finally computed.

6. DISTINCT
Of the remaining rows, rows with duplicate values in the column marked as DISTINCT will be discarded.

7. ORDER BY
If an order is specified by the ORDER BY clause, the rows are then sorted by the specified data in either ascending or descending order. Since all the expressions in the SELECT part of the query have been computed, you can reference aliases in this clause.

8. TOP
*/
--Filtering (WHERE) happens before grouping (GROUP BY), while filtering aggregated results (HAVING) happens later.
--The SELECT clause runs late, so aliasing inside it cannot be used in WHERE or GROUP BY.
--Sorting happens at the very end (ORDER BY), and limiting rows (TOP) is the final step.



--NULL Behaviour

deptid=1100000000000
null


CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2)
);

INSERT INTO Employees
    (EmployeeID, EmployeeName, Department, Salary, Bonus)
VALUES
    (101, 'Rahul', 'IT',       50000, 5000),
    (102, 'Priya', 'HR',       60000, NULL),
    (103, 'Amit',  NULL,       55000, 0),
    (104, 'Neha',  'Finance',  NULL, NULL),
    (105, 'Karan', 'IT',       45000, 3000);

SELECT * FROM Employees;

select * from employees where bonus = null

SELECT *
FROM Employees
WHERE Bonus IS NULL;


--To find employees whose bonus is present:


SELECT *
FROM Employees
WHERE Bonus IS NOT NULL;


SELECT *
FROM Employees
WHERE Bonus = NULL;


--This will not return the rows with NULL bonuses under normal SQL Server settings.

SELECT *
FROM Employees
WHERE Bonus IS NULL;

-- NULL in calculations

SELECT
    50000 + 5000 AS KnownTotal,
    50000 + NULL AS UnknownTotal;


SELECT
    EmployeeName,
    Salary,
    Bonus,
    Salary + Bonus AS TotalCompensation
FROM Employees;

--Using `ISNULL`

SELECT
    EmployeeName,
    Salary,
    Bonus,
    ISNULL(Bonus, 0) AS BonusForCalculation
FROM Employees;

-- Using `COALESCE`

SELECT
    EmployeeName,DEPARTMENT,
    COALESCE(Department, 'Not Assigned') AS Department
FROM Employees;


SELECT
    EmployeeName,
    COALESCE(Department, 'Not Assigned') AS Department,
    COALESCE(Bonus, Salary, 0) AS FirstAvailableAmount
FROM Employees;

---DATATYPE PRECEDENCE

SELECT COALESCE( NULL, NULL, 1, 2.00, 'ABC', GETDATE())



SELECT COALESCE( NULL, NULL, 1, 2.00, 'ABC')


--date
--numerical- decimal, bigint, int
--char



select * from employees


-- How aggregate functions handle NULL


SELECT
    COUNT(*) AS TotalEmployees,
    COUNT(Bonus) AS EmployeesWithKnownBonus,
    SUM(Bonus) AS TotalKnownBonus,
    AVG(Bonus) AS AverageKnownBonus
FROM Employees;

alter table employees
add demo int

select * from employees

select sum(demo) as test
from employees


-- NULL and filtering with `NOT`

SELECT *
FROM Employees
WHERE NOT (Bonus = 5000);

SELECT *
FROM Employees
WHERE Bonus <> 5000
   OR Bonus IS NULL;



-- NULLIF:

/*
The NULLIF function compares two expressions and returns NULL if they are equal; otherwise, it returns the first expression.

It's useful for handling scenarios where you want to treat specific values as NULL.
*/

select nullif('Peter','Peter')

select nullif('Peter','nancy')

select nullif('Peter',120)

select nullif('56',120)

select nullif(Null,null)

select nullif(45,null)

select nullif(getdate(),56)

select bonus, salary, nullif(bonus, salary)
from employees

--default null behaviour

set ansi_nulls off

if null=null
print 'equal'
else
print'not equal'

set ansi_nulls on


-- Explicit Data Type Conversion in T-SQL

-- CAST and TRY_CAST

select '500'+'100'

SELECT CAST('500' AS INT)+100 AS ConvertedValue;

select cast('peter' as int) as conv_val

select cast(employeeid as int ) from employees

SELECT CAST(125.75 AS INT) AS ConvertedValue;

SELECT TRY_CAST('500' AS INT) AS ValidConversion,
       TRY_CAST('Hello' AS INT) AS InvalidConversion;

-- CONVERT and TRY_CONVERT

SELECT CONVERT(DATE, '20261012', 112) AS ConvertedDate;

SELECT CONVERT(VARCHAR(10), GETDATE(), 103) AS FormattedDate;

SELECT TRY_CONVERT(DATE, '20261012', 112) AS ValidDate,
       TRY_CONVERT(DATE, 'NotADate', 112) AS InvalidDate;


--PARSE

SELECT PARSE('12/10/2026' AS DATE USING 'en-GB') AS ConvertedDate;

--TRY_PARSE

SELECT TRY_PARSE('12/10/2026' AS DATE USING 'en-GB') AS ValidDate,
       TRY_PARSE('NotADate' AS DATE USING 'en-GB') AS InvalidDate;


-- STR

SELECT STR(123.45, 8, 2) AS ConvertedText;

SELECT STR(123.456, 8, 2) AS ConvertedText;


select cast('123' as int),
try_cast('123a' as int),
convert(int, '123'),
try_convert(int, '123a'),
parse('12/03/2026' as date using 'en-GB'),
try_parse('abc12/03/2026' as date using 'en-GB'),
STR(123.456, 8, 2)



----2. Sorting and filtering query results

-- ORDER BY

-- The ORDER BY clause is used to sort the result set based on one or more columns, either in ascending order or descending order.

select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by countofemp			--by default asc


select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by count(BusinessEntityID)

-- Descending

select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by countofemp desc

-- or


select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by count(BusinessEntityID) desc

-- Sort based on one or more columns

select JobTitle, count(BusinessEntityID) as 'CountOFEmp'
from AdventureWorks2016.HumanResources.Employee
group by jobtitle
order by jobtitle,countofemp		

--it will first sort as per countofemp asc and for identical values of countofemp it will sort alphabetically as per jobtitle

--how null valueswill be sorted?
-- Sorting with NULLs at the end (Ascending)
SELECT BusinessEntityID, JobTitle, OrganizationLevel
FROM AdventureWorks2016.HumanResources.Employee
ORDER BY OrganizationLevel ASC;  -- NULLs come first by default

-- Sorting with NULLs at the end (Descending)
SELECT BusinessEntityID, JobTitle, OrganizationLevel
FROM AdventureWorks2016.HumanResources.Employee
ORDER BY OrganizationLevel DESC;  -- NULLs come last

--null treated as lowest values


SELECT TOP (10)
    ProductID,
    Name,
    ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;




select *
from emp
where employeeid<16


SELECT 
    ProductID,
    Name,
    ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;


SELECT TOP (10) WITH TIES
    ProductID,
    Name,
    ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;


SELECT DISTINCT Color
FROM Production.Product
WHERE Color IS NOT NULL
ORDER BY Color ASC;


SELECT Color
FROM Production.Product
WHERE Color IS NOT NULL
ORDER BY Color ASC;


SELECT
    ProductID,
    Name,
    ListPrice
FROM Production.Product
ORDER BY ProductID desc
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;


SELECT ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ProductID
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;


SELECT ProductID, Name
FROM Production.Product
ORDER BY ProductID
OFFSET 10 ROWS;


--ALL and DISTINCT in T-SQL

USE AdventureWorks2016;
GO

SELECT ALL Color
FROM Production.Product;

SELECT Color
FROM Production.Product;

SELECT DISTINCT Color
FROM Production.Product;    

SELECT DISTINCT Color, ListPrice
FROM Production.Product;

select *, 0.1*salary as ten_pervent_sal from emp

-- select into

select *, 0.1*salary as ten_pervent_sal
into emp2
 from emp

 select * from emp2


--FILTERING

-- WHERE 

-- The WHERE clause is used to filter the rows returned by SELECT statement based on a specific condition

-- Qry 1

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where OrganizationLevel > 3

-- Qry 2

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where BusinessEntityID in(5,7,77,23,65,95,110)

-- Retrieve employees not assigned to specific departments
SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID NOT IN (2, 5, 7);


-- Qry 3
--When should we use BETWEEN instead of >= and <=?
--BETWEEN A AND B is just shorthand for A >= value AND B <= value, making queries cleaner.
select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where BusinessEntityID between 50 and 70

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where BusinessEntityID >= 50 and BusinessEntityID<= 70


-- Qry 4

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where OrganizationLevel = 1 or OrganizationLevel = 4

-- Qry 5

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where MaritalStatus = 'S'

-- Qry 6

select BusinessEntityID,JobTitle,BirthDate,OrganizationLevel
from HumanResources.Employee
where year(HireDate) = 2007

-- Retrieve employees who have the highest salary in their department
--This subquery finds the highest salary in each department.
--The main query filters employees whose salary matches the highest in their department.
SELECT BusinessEntityID, JobTitle, Salary, DepartmentID
FROM HumanResources.Employee E
WHERE Salary = (
    SELECT MAX(Salary) FROM HumanResources.Employee WHERE DepartmentID = E.DepartmentID
);

SELECT BusinessEntityID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel IS NULL;



select * from HumanResources.employee

--use of case statements in the select query
--case gives value according to conditions defined in itself
--CASE statements are used for conditional logic in SQL queries, similar to IF-ELSE in programming. They allow returning values based on specific conditions.
.
--simple case

select distinct case maritalstatus 
	when 's' then 'unmarried'
	when 'm' then 'married'
	end as status, 
    jobtitle
from HumanResources.Employee

--searched case
select jobtitle, 
case when BirthDate< '01-01-1980' then 'senior'
						when BirthDate>='01-01-1980' then 'young'
						end as status
from HumanResources.Employee

--The CASE statement dynamically applies different salary conditions based on DepartmentID.
-- Retrieve employees where salary conditions change dynamically

select * from emp
    
select *, case when salary<=60000 then 101
when salary>= 60000 then 102
end as deptid
from emp


select *, case when salary<=60000 then 101
when salary>= 60000 then 102
end as deptid
from emp
where DepartmentID= case when salary<=60000 then 101
when salary>= 60000 then 102
end


SELECT BusinessEntityID, JobTitle, Salary, DepartmentID
FROM HumanResources.Employee
WHERE Salary > 
    CASE 
        WHEN DepartmentID = 1 THEN 50000  
        WHEN DepartmentID = 2 THEN 60000  
        ELSE 40000  
    END;
--TOP 5 returns only the first 5 rows.
--ORDER BY Salary DESC sorts results in descending order (highest salary first).
-- Retrieve the top 5 highest-paid employees
SELECT TOP 5 BusinessEntityID, JobTitle, Salary
FROM HumanResources.Employee
ORDER BY Salary DESC;


-- There are 4 types of wildcards:

/*
Percent Sign (%):

1. The percent sign represents zero, one, or multiple characters.
2. It basically search for a number of characters after, before or in the middle of a particular character specified.
3. Used to match any sequence of characters.
*/

use AdventureWorks2016

-- Example 1

select distinct firstname
from Person.Person
where firstname like 'a%'

-- Example 2

select firstname
from Person.Person
where firstname like 'mi%da%as'

/*
Underscore (_):

1. The underscore represents a single character.
2. Used to match any single character in a specific position.
3. It will not look for a string of characters but instead will look for only one character.
*/

-- Example 1

select firstname
from Person.Person
where firstname like 'a_'
order by firstname

-- Or

select firstname
from Person.Person
where firstname like 'a__'


select firstname
from person.person
where firstname like '_a%'


/*
Square Brackets ([]):

Square brackets are used to specify a range of characters for a single position.
*/

-- Example 1

select distinct firstname
from person.person
where firstname like '[f-j]%'
order by firstname

-- Or

select distinct firstname
from person.person
where firstname like '%[f-j]%'

-- Example 2

select firstname
from person.person
where firstname like '[abc]%'

-- Or

select firstname
from person.person
where firstname like '[a,b,d,c]%'

-- Or

select firstname
from person.person
where firstname like '[a]%' or firstname like '[b]%' or firstname like '[c]%'



/*
Caret Symbol ^ : This symbol is usually used to represent an exponential value in computer. But in SQl Server it Matches any single character that is not within the range or set specified between the square brackets

1. ^ Wildcard and - has to be used with [] otherwise it will not work.
2. It will skip the specified character and will search for the other characters.
*/

-- Example 1

select firstname
from person.person
where firstname like '[acd]%'

select firstname
from person.person
where firstname like '[^acd]%'

-- Example 2

select distinct firstname
from person.person
where firstname like 'A_i[^a]%'


-- Some in class Assignment Questions :


-- Q1: Retrieve the names of people whose last name starts with "S"

select lastname
from person.person
where lastname like 's%'

-- Q2: Find people whose lastname contains the letter 'a' at any position.

select lastname
from person.person
where lastname like '%a%'

-- Q3: Retrieve lastnames of people whose last name ends with "son".

select lastname
from person.person
where lastname like '%son'

-- Q4: Find people whose  lastname starts with "J" and is followed by any two characters.

select lastname
from person.person
where lastname like 'J__'

--Joins

DROP TABLE EMP
DROP TABLE DEPT

CREATE TABLE Emp (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    HireDate DATETIME,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    IsActive BIT
)

INSERT INTO Emp
VALUES
    (1, 'John', 'Doe', '1990-05-15', '2010-07-01', 60000.00, 101, 1),
    (2, 'Jane', 'Smith', '1985-12-20', '2008-03-15', 75000.50, 102, 1),
    (3, 'Michael', 'Johnson', '1992-08-10', '2015-02-28', 55000.75, 101, 0),
    (4, 'Emily', 'Brown', '1988-04-05', '2012-11-10', 80000.00, 103, 1),
    (5, 'William', 'Miller', '1995-02-28', '2018-09-05', 70000.25, 102, 1),
    (6, 'Olivia', 'Davis', '1987-09-12', '2013-06-20', 65000.50, 103, 1),
    (7, 'James', 'Wilson', '1993-11-08', '2016-04-03', 90000.00, 101, 1),
    (8, 'Sophia', 'Martinez', '1986-06-25', '2009-08-15', 72000.75, 102, 1),
    (9, 'Alexander', 'Anderson', '1991-03-18', '2014-01-12', 58000.00, 103, 0),
    (10, 'Ava', 'Garcia', '1989-07-30', '2011-10-25', 85000.50, 101, 1),
    (11, 'Daniel', 'Taylor', '1994-01-22', '2017-07-08', 62000.75, 102, 1),
    (12, 'Mia', 'Clark', '1984-10-05', '2007-05-18', 77000.00, 103, 1),
    (13, 'Ethan', 'Hernandez', '1996-04-15', '2019-12-01', 69000.25, 101, 1),
    (14, 'Chloe', 'Lopez', '1983-12-08', '2006-02-14', 92000.50, 102, 1),
    (15, 'Liam', 'Williams', '1997-09-03', '2020-06-05', 80000.75, 103, 1),
    (16, 'Emma', 'Jackson', '1982-05-20', '2005-09-30', 54000.00, 101, 1),
    (17, 'Benjamin', 'Moore', '1998-02-10', '2021-03-12', 78000.50, 102, 1),
    (18, 'Avery', 'White', '1981-08-22', '2004-12-24', 67000.75, 103, 1),
    (19, 'Logan', 'Harris', '1999-06-18', '2022-01-18', 94000.00, 101, 1),
    (20, 'Grace', 'Martin', '1980-11-28', '2003-07-09', 71000.25, 102, 1)
end

CREATE TABLE Dept (
    DepartmentID INT,
    DeptName NVARCHAR(50) NOT NULL,
    ManagerID INT,
    Location NVARCHAR(100),
    EstablishedDate DATE,
    Budget DECIMAL(15, 2)
)

INSERT INTO Dept (DepartmentID, DeptName, ManagerID, Location, EstablishedDate, Budget)
VALUES
    (101, 'Finance', 201, 'New York', '2000-05-15', 1000000.00),
    (102, 'Human Resources', 202, 'Chicago', '1998-09-22', 800000.50),
    (103, 'Information Technology', 203, 'San Francisco', '2005-02-10', 1500000.75),
    (104, 'Marketing', 204, 'Los Angeles', '2008-11-30', 1200000.25),
    (105, 'Operations', 205, 'Dallas', '2013-06-18', 900000.00)

select * from emp

select * from Dept

update dept
set DepartmentID = 102
where DepartmentID = 104


select e.EmployeeID,d.DepartmentID,CONCAT_WS(' ',e.FirstName,e.LastName) as Fullname, e.Salary, d.DeptName,d.ManagerID
from dept d  inner join emp e -- Right Table
on d.DepartmentID = e.DepartmentID


-- Returns all rows from the left table and the matching rows from the right table. If there is no match, NULL values are returned for columns from the right table.

select d.DepartmentID,d.DeptName,d.ManagerID,e.EmployeeID,e.FirstName,e.LastName, e.Salary
from dept d -- Left table
left outer join emp e -- Right Table
on d.DepartmentID = e.DepartmentID

-- Since the decision is made on the LEFT table which is having some record that is not there in the RIGHT table. So the RIGHT table is showing you NULL values.

select e.EmployeeID,e.FirstName,e.LastName, e.Salary,e.DepartmentID,d.DepartmentID,d.DeptName,d.ManagerID
from emp e -- Left table
right outer join dept d -- Right Table
on d.DepartmentID = e.DepartmentID


select e.BusinessEntityID, e.JobTitle, e.HireDate,CONCAT_WS(' ',p.FirstName,p.MiddleName,p.LastName) as Fullname
from AdventureWorks2016.HumanResources.Employee e
left outer join AdventureWorks2016.Person.Person p
on e.BusinessEntityID = p.BusinessEntityID
-- This is not showing any NULL values because the decision making is done based on the Employee table so it will show all the records from the Employee table and since all those associated records are also present in the Person table so it will not show any NULL values.

select CONCAT_WS(' ',p.FirstName,p.MiddleName,p.LastName) as Fullname,e.BusinessEntityID, e.JobTitle, e.HireDate
from AdventureWorks2016.Person.Person p
left outer join AdventureWorks2016.HumanResources.Employee e 
on e.BusinessEntityID = p.BusinessEntityID


select d.DepartmentID,d.DeptName,d.ManagerID,e.EmpID,e.FirstName,e.LastName, e.Salary,e.DepartmentID
from emp e -- Left table
left outer join dept d -- Right Table
on d.DepartmentID = e.DepartmentID

--or-- both above and below query will yield same result

select e.EmpID,e.FirstName,e.LastName, e.Salary,e.DepartmentID,d.DepartmentID,d.DeptName,d.ManagerID
from dept d -- Left table
Right outer join emp e -- Right Table
on d.DepartmentID = e.DepartmentID


-- 4. FULL (OUTER) JOIN:
-- Returns all rows when there is a match in either the left or right table. If there is no match, NULL values are returned for columns from the table without a match.

select d.DepartmentID,d.DeptName,d.ManagerID,e.EmployeeID,e.FirstName,e.LastName, e.Salary,e.DepartmentID
from emp e -- Left table
full outer join dept d -- Right Table
on d.DepartmentID = e.DepartmentID


-- CROSS JOIN:
-- Cross joins, also known as Cartesian joins, are used to produce the Cartesian product of two tables. In a cross join, each row from the first table is combined with every row from the second table, resulting in a combination of all possible pairs of rows. 



create table A(ID int Identity,Name varchar(10))

insert into A values('A'),('B'),('C'),('D'),('E')

create table B(ID int Identity,Name varchar(10))

insert into B values('1'),('2'),('3'),('4'),('5')

select * from a

select * from b

-- Ex 1

select a.Name,b.name
from a cross join b

-- or

select a.Name,b.name
from a,b

-- Ex 2 

select * from emp

select * from dept

select e.FirstName,d.DeptName
from dept d,emp e

select e.*, d.*
from emp e
cross join dept d


select count(*)
from emp e
cross join dept d



-- Cross Join does not require the ON clause.


-- SELF JOINS

-- A self-join occurs when a table is joined with itself. This is often used when dealing with hierarchical data.

--find manager name for each employee

drop table emp2

create table emp2
(id int,
ename varchar(30),
gender char(1),
deptno int,
mid int,
salary int)

insert into emp2 values
(1,'LINDA','F',10,null,75000),
(2,'MARY','F',10,1,40000),
(3,'ANJELA','F',10,2,32000),
(4,'JASON','M',20,1,50000),
(5,'AHMED','M',20,4,30000),
(6,'MARIA','F',20,4,40000),
(7,'JOHN','M',30,1,60000),
(8,'JACK','M',30,7,55000),
(9,'JUNE','F',30,7,40000),
(10,'OLA','M',30,8,35000)

select * from emp2

select e2.id,e2.ename as Managers,e1.mid,e1.ename as Emp
from emp2 e1
inner join emp2 e2
on e1.mid = e2.id

select e2.ename as Managers,e1.ename as Emp
from emp2 e1
left join emp2 e2
on e1.mid = e2.id

select isnull(e2.ename, 'ceo') as Managers,e1.ename as Emp
from emp2 e1
left join emp2 e2
on e1.mid = e2.id

select e1.ename as emp_name , isnull(e2.ename,'ceo') as managername
from emp_man e1
left join emp_man e2
on e1.mid=e2.id


--Temporary database objects

--Temporay table
--Table Variable
--CTEs
--Derived Tables


--Temporary table
--Local
--Global

----Local temporary table-- session wise

create table #temp
(id int ,
name varchar(50))


select * from #temp

insert into #temp
select employeeid, firstname from emp




create table ##temp
(id int ,
name varchar(50))


select * from ##temp

insert into ##temp
select employeeid, firstname from emp


declare @tab table
(id int, name varchar(50))

select * from @tab


--cte

with cte as
(select * from emp)

select * from cte where employeeid=5

--derived table


select a.employeeid, a.Salary
from(select * from emp where employeeid<15) as a



-- Retrieve employees who have the highest salary in their department
--This subquery finds the highest salary in each department.
--The main query filters employees whose salary matches the highest in their department.

--emp(employeeid, firstname, departmentid, salary)


with cte as(
select max(salary) as max_sal, departmentid
from emp
group by departmentid
)

select e.*
from emp e
inner join cte c
on e.departmentid=c.departmentid
where e.salary=c.max_sal


select * from emp --one part naming convention

select * from dbo.emp  -- two part naming convention

select * from AdventureWorks2016.dbo.emp   --3 part naming convention

select @@SERVERNAME

select * from RDev.AdventureWorks2016.dbo.emp    --4 part naming convention
	


--Query Tuning Performance in joins


--SUBQUERY

select a.* from ( select * from emp where employeeid<15) as a

--find all the emp whose salary is more than average salary of entire organization

select avg(salary) as avg_sal from emp


select * from emp where salary >72700.350000

select * from emp where salary >(select avg(salary) as avg_sal from emp)

select * from emp where salary > avg_sal

--variables

declare @avg decimal(10,2)

select @avg= avg(salary) from emp

print @avg

select * from emp where salary>@avg


---- Types of SUBQUERIES
--1. Non Correlated Subquery
--2. Correlated Subquery

--non corelated subquery


select * from emp where salary >(select avg(salary) as avg_sal from emp)


---- Further Subqueries can be classified as
--1. Subqueries that returns Single output. 
--2. Subqueries that returns Multiple output.

select EmpID,CONCAT_WS(' ',FirstName,LastName) as Fullname, Salary
from emp
where salary > (select avg(salary) from emp)

-- or

select EmpID,CONCAT_WS(' ',FirstName,LastName) as Fullname, Salary
from emp
where salary > 73950

-- or

select EmpID,CONCAT_WS(' ',FirstName,LastName) as Fullname, Salary
from emp
where salary > (select 73950)


--employee information who are sales person
select *
from person.person
where BusinessEntityID IN(select a.BusinessEntityID from sales.salesperson)

select *
from emp
where salary>(select salary from emp where DepartmentID=101)

select *
from emp
where salary>all(select salary from emp where DepartmentID=101)

select *
from emp
where salary>any(select salary from emp where DepartmentID=101)


--finding salesperson info 

use AdventureWorks2016


select BusinessEntityID,CONCAT_WS(' ',FirstName,LastName) as Fullname
from person.person
where BusinessEntityID in (select BusinessEntityID from Sales.SalesPerson)

-- or

select * from person.person

select BusinessEntityID,CONCAT_WS(' ',FirstName,LastName) as Fullname
from person.person
where persontype in (select persontype from person.person where persontype = 'SP')

-- or

select BusinessEntityID,CONCAT_WS(' ',FirstName,LastName) as Fullname
from person.person
where persontype = 'SP'


-- Display me the IDs and FULLNAME of those persons who are not salespersons

select BusinessEntityID,CONCAT_WS(' ',FirstName,LastName) as Fullname
from person.person
where BusinessEntityID not in (select BusinessEntityID from Sales.SalesPerson)

--select clause

select employeeid from emp

select employeeid, (select salary from emp)
from emp



select SalesPersonID,SalesOrderID,(select avg(totaldue) from sales.SalesOrderHeader)
from sales.SalesOrderHeader
where SalesPersonID is not null

----||||||subquery in from clause||||||||||||
select p.BusinessEntityID, CONCAT_WS(' ',p.FirstName,p.LastName) as Fullname, p.PersonType
from (select businessEntityID,firstname,lastname,persontype from person.Person) as P
where p.PersonType = 'SC'


select p.BusinessEntityID, CONCAT_WS(' ',p.FirstName,p.LastName) as Fullname, p.PersonType
from (select * from person.Person) as p
where p.PersonType = 'SC' and p.Title is not null

select e.BusinessEntityID,p.Fullname,e.JobTitle
from (select BusinessEntityID, CONCAT_WS(' ',FirstName,LastName) as Fullname from person.person) as p
join HumanResources.Employee e
on p.BusinessEntityID = e.BusinessEntityID


--|||||||subquery in inner join clause|||||||||||||
select p.BusinessEntityID, p.FirstName, es.TotalSales
from person.person p
join (
	select SalesPersonID,sum(totaldue) as TotalSales
	from sales.SalesOrderHeader
	group by SalesPersonID
)as ES
on p.BusinessEntityID = es.SalesPersonID

-- Correlated Subqueries:





-- find all the emp whose salry is more than avg salary of their respective department


select * from emp


--||||||||||| non corelated subquery in inner join  clause|||||||||||||||
select concat_ws(' ', e.firstname, e.lastname) as fullname , e.departmentid, e1.avg_sal, e.Salary, e.EmployeeID
from tts.dbo.Emp e
inner join (
select DepartmentID, avg(salary) avg_sal
from tts.dbo.emp
group by departmentid) e1
on e.departmentid=e1.DepartmentID
where e.salary>e1.avg_sal


--calculate employees whose salary is greater than average salary of employees in their department


select * from emp

select EmployeeID, CONCAT_WS(' ',firstname,lastname) as Fullname, Salary, DepartmentID
from emp e
where departmentid=101 and salary > (select avg(salary) from emp where DepartmentID = 101)


select EmployeeID, CONCAT_WS(' ',firstname,lastname) as Fullname, Salary, DepartmentID
from emp e
where departmentid=102 and salary > (select avg(salary) from emp where DepartmentID = 102)


select EmployeeID, CONCAT_WS(' ',firstname,lastname) as Fullname, Salary, DepartmentID
from emp as e
where salary>(select avg(salary) from emp where departmentid= e.departmentid)


--resulted query
select EmployeeID, CONCAT_WS(' ',firstname,lastname) as Fullname, Salary, DepartmentID
from tts.dbo.Emp e
where salary > (select avg(salary) from  dbo.emp where DepartmentID = e.DepartmentID)


select DepartmentID, count(*)
from dbo.Emp e
where salary > (select avg(salary) from  dbo.emp where DepartmentID = e.DepartmentID)
group by departmentid


--corelated subquery in select clause

--display the info(name, jobtitile) of all employees in the organizatoion  who are also salespersonwithout using joins 
--humanresource.employee
--person.person
--sales.salesperson

select e.BusinessEntityID,e.JobTitle
from HumanResources.employee e

select * from sales.SalesPerson


select e.BusinessEntityID,e.JobTitle,
(select CONCAT_WS(' ',firstname,LastName) from person.person where BusinessEntityID = e.BusinessEntityID) as Fullname
from HumanResources.Employee e
where e.BusinessEntityID in (select BusinessEntityID from Sales.SalesPerson)


select e.JobTitle
(select CONCAT_WS(' ',firstname,LastName) from person.person where BusinessEntityID = e.BusinessEntityID) as Fullname
from HumanResources.Employee e
where e.BusinessEntityID in (select BusinessEntityID from Sales.SalesPerson)


select * from emp
select sum(salary) from emp

select *, (select sum(salary)  from emp where employeeid<=e.employeeid)
from emp e
order by e.employeeid




----running total of salary using corelated subquery

SELECT 
    e.*,
    (
        SELECT SUM(e2.salary)
        FROM emp e2
        WHERE e2.EmployeeID <= e.employeeid
    ) AS RunningTotal
FROM emp e
ORDER BY e.employeeid;

--System FUnctions

---- Emp( empid, empname, salary, dept, email)

-- peter@koenig-solutions.com
-- amy@microsoft.com


--Fetch the organization name from email column 

declare @email varchar(50) = 'amy@microsoft.com'

select CHARINDEX('@', @email)

select CHARINDEX('.com', @email)

select CHARINDEX('.com', @email)- CHARINDEX('@', @email)

select substring(@email, 6, 100)


select substring(@email, CHARINDEX('@', @email)+1, CHARINDEX('.com', @email)- CHARINDEX('@', @email)-1)



--Cusrsor  Functions

declare employeecursor cursor local fast_forward
for
select  businessentityid from HumanResources.employee


open employeecursor

declare @employeeid int
fetch next from employeecursor into @employeeid

select @@FETCH_STATUS as fetchstatus

close employeecursor

select getdate() ,
year(orderdate),
month(orderdate),
day(orderdate)
from sales.SalesOrderHeader

select OBJECT_ID('humanresources.employee')

select object_name(1557580587)

select @@VERSION

select * from sys.all_objects


select * from production.product 

--Getting started with Scalar Functions

--String functions

SELECT
    FirstName,
    UPPER(FirstName) AS UppercaseName
FROM Person.Person;

SELECT
    FirstName,
    UPPER(FirstName) AS UppercaseName,
    LOWER(FirstName) AS LowercaseName,
    LEN(FirstName) AS NameLength
FROM Person.Person;

--Numeric functions

SELECT
    ListPrice,
    ROUND(ListPrice, 0) AS RoundedPrice,
    ABS(ListPrice - 100) AS DifferenceFrom100
FROM Production.Product;

--Date functions

SELECT
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM Sales.SalesOrderHeader;

--NULL-handling functions

SELECT
    ProductID,
    Name,
    Color,
    ISNULL(Color, 'Not Specified') AS DisplayColor
FROM Production.Product;

--Conversion functions

SELECT
    Name,
    ListPrice,
    CAST(ListPrice AS VARCHAR(20)) AS PriceAsText
FROM Production.Product;


---Logical Functions
---Example 1: Categorize products by price

USE AdventureWorks2016;
GO

SELECT
    ProductID,
    Name,
    ListPrice,
    IIF(ListPrice > 1000, 'Expensive', 'Affordable') AS PriceCategory
FROM Production.Product;

-- Example 2: Check whether a product is available for sale


SELECT
    ProductID,
    Name,
    SellEndDate,
    IIF(SellEndDate IS NULL, 'Currently Not Ended', 'Sales Ended')
        AS SalesStatus
FROM Production.Product;


--- Example 3: Use `IIF()` with numeric results


SELECT
    Name,
    ListPrice,
    IIF(ListPrice > 1000, ListPrice * 0.10, 0) AS DiscountAmount
FROM Production.Product;


--`CHOOSE()` — Return a value based on a position

SELECT
    CHOOSE(1, 'Bronze', 'Silver', 'Gold') AS CustomerTier1,
    CHOOSE(2, 'Bronze', 'Silver', 'Gold') AS CustomerTier2,
    CHOOSE(3, 'Bronze', 'Silver', 'Gold') AS CustomerTier3;


-- Example 2: Assign a label based on a number

select listprice,
CASE
            WHEN ListPrice < 100 THEN 1
            WHEN ListPrice < 1000 THEN 2
            ELSE 3
        END
    AS PriceLevel
FROM Production.Product;

SELECT
    ProductID,
    Name,
    CHOOSE(
        CASE
            WHEN ListPrice < 100 THEN 1
            WHEN ListPrice < 1000 THEN 2
            ELSE 3
        END,
        'Low',
        'Medium',
        'High'
    ) AS PriceLevel
FROM Production.Product;

--Windows Functions

--Ranking Functionss

--Row_number
--rank
--denserank
--ntile

--over

select * from emp

select *, ROW_NUMBER() over(order by salary desc) rno
from emp

update emp
set salary= 94000
where employeeid=7


select *, ROW_NUMBER() over(partition by departmentid order by salary desc) rno
from emp

--no duplicates
--no gaps
--unique / distinct


--Rank


select *, Rank() over(order by salary desc) rnk
from emp

select *, Rank() over(partition by departmentid order by salary desc) rnk
from emp

--duplicate
--gaps


--Dense_rank

select *, dense_rank() over(order by salary desc) drnk
from emp


select *, dense_rank() over(partition by departmentid order by salary desc) drnk
from emp


--emp
select * from emp

--find all the emp in each dept having 2nd highest salary


select *, dense_rank() over(partition by departmentid order by salary desc) drnk
from emp
where drnk=2



select *
from emp
where dense_rank() over(partition by departmentid order by salary desc)=2


--cte , derived table

select a.*
from
(select *, dense_rank() over(partition by departmentid order by salary desc) drnk
from emp) as a
where drnk=2

with cte as
(select *, dense_rank() over(partition by departmentid order by salary desc) drnk
from emp)

select * from cte 
where drnk=2


select * from emp

select *
from emp
where round(salary, 0)= 55001


--find which department have 2nd highest average salaries

with cte as
(select departmentid, avg(salary) as avg_dept_sal, dense_rank() over(order by avg(salary) desc) as drnk
from emp
group by departmentid
)
select * from cte where drnk=2


select departmentid, e.drnk, 
from e
Where  drnk between 1 and 3

 
 select b.*
 from(
select a.*, Dense_rank() Over (order by a.avg_sal desc) as drnk 
from 
(select departmentid, avg(salary) as avg_sal
from emp
group by departmentid) as a) b
where b.drnk=2

--ntile

select *, ntile(3) over(partition by departmentid order by salary desc) as ntile_sal
from emp


select *, ntile(3) over(partition by departmentid order by salary desc) as ntile_sal
from emp

--Find highest earning employees group ( high , medium, low) in each dept

with cte as
(select *, ntile(3) over(partition by departmentid order by salary desc) as ntile_sal
from emp)

select * from cte where ntile_sal=1

select * from dept

--Aggregate functions in windows functions

select sum(salary)
from emp
group by departmentid

select * from emp

select *, avg(salary) over(partition by departmentid) as avg_sal_dept
from emp

--Running total

select *,sum(salary) over (order by employeeid asc) as running_total
from emp

--moving average

--ROWS Between Clause

--UNBOUNDED PRECEDING
--N PRECEDING
--CURRRENT ROW
--N FOLLOWING
--UNBOUNDED FOLLOWING

select *,sum(salary) over (order by employeeid asc ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) as running_total
from emp


--moving average

select * from emp

select *,avg(salary) over (order by employeeid asc ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) as mov_avg
from emp

--Analytical Windows Functions

--LAG
--LEAD

select *, lead(salary) over(order by employeeid) as leading_val
from emp

select *, lag(salary) over(order by employeeid) as leading_val
from emp


--Count, min, max, avg, sum
--Count(col name), Count(*)

select * from emp order by departmentid, isactive

--Avg salary of employees who are active


select avg(salary)
from emp
where IsActive = 1

--Avg salary of employees who are active for each department

select avg(salary), departmentid
from emp
where IsActive = 1
group by departmentid

--Avg salary of employees who are active for each department also having no. of employees in that department more than 5


select avg(salary), departmentid
from emp
where IsActive = 1
group by departmentid
having count(employeeid)>5


--Avg salary of employees who are active for each department also having no. of employees in that department more than 5 and summation of salary in that department also more than 300k

select avg(salary), departmentid
from emp
where IsActive = 1
group by departmentid
having count(employeeid)>5 and sum(salary) >300000

/*
DML(Data Manipulation Language):

The SQL commands that deal with the manipulation of data present in the database belong to DML or Data Manipulation Language and this includes most of the SQL statements.
*/ 

drop table emp

CREATE TABLE Emp (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    HireDate DATETIME,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    IsActive BIT
	)
select * from emp

-- INSERT: This statement is used to insert new records in a table.

-- Method 1

insert into emp(EmployeeID,Firstname,Lastname,Birthdate,Hiredate,Salary,DepartmentID,IsActive)
values(1,'George','Simon','11-1-1984','1-7-2006 08:45:00',75000,10,1)


insert into emp(Firstname,Lastname,Birthdate,Hiredate,Salary,DepartmentID,IsActive,employeeid)
values('George','Simon','11-1-1984','1-7-2006 08:45:00',75000,10,1,2)



-- Method 2

insert into emp
values(3,'Martin','West','08-23-1990','9-24-2010 08:45:00',85000,101,1)


insert into emp
values('Martin','West','08-23-1990','9-24-2010 08:45:00',85000,101,1,4)


-- Method 3

-- Populating the table with multiple values
truncate table emp
INSERT INTO Emp VALUES (21, 'Michael', 'Johnson', '1992-08-10', '2015-02-28', 55000.75, 101, 0),
    (4, 'Emily', 'Brown', '1988-04-05', '2012-11-10', 80000.00, 103, 1),
    (5, 'William', 'Miller', '1995-02-28', '2018-09-05', 70000.25, 102, 1),
    (6, 'Olivia', 'Davis', '1987-09-12', '2013-06-20', 65000.50, 103, 1),
    (7, 'James', 'Wilson', '1993-11-08', '2016-04-03', 90000.00, 101, 1),
    (8, 'Sophia', 'Martinez', '1986-06-25', '2009-08-15', 72000.75, 102, 1),
    (9, 'Alexander', 'Anderson', '1991-03-18', '2014-01-12', 58000.00, 103, 0),
    (10, 'Ava', 'Garcia', '1989-07-30', '2011-10-25', 85000.50, 101, 1),
    (11, 'Daniel', 'Taylor', '1994-01-22', '2017-07-08', 62000.75, 102, 1),
    (12, 'Mia', 'Clark', '1984-10-05', '2007-05-18', 77000.00, 103, 1),
    (13, 'Ethan', 'Hernandez', '1996-04-15', '2019-12-01', 69000.25, 101, 1),
    (14, 'Chloe', 'Lopez', '1983-12-08', '2006-02-14', 92000.50, 102, 1),
    (15, 'Liam', 'Williams', '1997-09-03', '2020-06-05', 80000.75, 103, 1),
    (16, 'Emma', 'Jackson', '1982-05-20', '2005-09-30', 54000.00, 101, 1),
    (17, 'Benjamin', 'Moore', '1998-02-10', '2021-03-12', 78000.50, 102, 1),
    (18, 'Avery', 'White', '1981-08-22', '2004-12-24', 67000.75, 103, 1),
    (19, 'Logan', 'Harris', '1999-06-18', '2022-01-18', 94000.00, 101, 1),
    (20, 'Grace', 'Martin', '1980-11-28', '2003-07-09', 71000.25, 102, 1)


    
CREATE TABLE Emp3 (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    BirthDate DATE,
    HireDate DATETIME,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    IsActive BIT
	)

insert into emp3
select * from emp
where employeeid<15

select * from emp3

--SELECT INTO is like copying a file and pasting it as a new file.
--INSERT INTO is like copying the contents of one file and adding it to an existing file.

-- SELECT INTO
---------------

select *
into empcopy
from emp

select * from empcopy

-- Copy specific column 

select BusinessEntityID,JobTitle,HireDate,Gender
into Advemp2
from AdventureWorks2016.HumanResources.Employee

select * from advemp2

-- Copy some records

drop table advemp2

select BusinessEntityID,JobTitle,HireDate,Gender
into Advemp2
from AdventureWorks2016.HumanResources.Employee
where gender = 'M'

select * from emp



-- If you want to copy the structure of another tbale but not the data then you would use SELECT into and give a wrong condition in the WHERE clause.
select BusinessEntityID,JobTitle,HireDate,Gender
into advemp3
from AdventureWorks2016.HumanResources.Employee
where 1=0 -- 1

select top 0 businessentityid, jobtitle, hiredate  -- 2
into advemp4
from AdventureWorks2016.HumanResources.Employee

select * from advemp4


-- INSERT INTO
--If you already have data but want to insert data from one table to another then in INSERT INTO we can use SELECT statement.



insert into advemp2
select  BusinessEntityID,JobTitle,hiredate,gender
from AdventureWorks2016.HumanResources.Employee



	-- UPDATE: This statement in SQL is used to update the data of an existing table in the database. We can update single columns as well as multiple columns using the UPDATE statement as per our requirement.

-- UPDATE makes use of SET clause. The SET Clause is used to set new values to the particular column and the WHERE clause is used to select the rows from which the columns are needed to be updated. If we have not used the WHERE clause then the columns in all the rows will be updated. So the WHERE clause is used to choose the particular row.

-- Updating single or Multiple records

select * from emp

update emp
set Salary = 100000
where employeeid = 20

update emp
set salary = 100000
where EmployeeID in (10,17,7)

update emp
set salary = 85000
where EmployeeID between 1 and 5

update emp
set salary = 100000

-- If we have not used WHERE clause then the columns in all the rows will be updated. So the WHERE clause is used to choose a particular row.

truncate table emp

-- Update Multiple columns at the same time

update emp
set Firstname = 'Laura',
lastname = 'Hart',
birthdate = '11-6-1994',
Hiredate = '12-11-2021',
salary = 45000,
DeptID = 102,
IsActive = 1
where empid = 2

-- DELETE: Delete is a basic SQL operation used to delete data in a database. SQL DELETE is an important part of database management DELETE can be used to selectively remove records from a database table based on certain conditions.

-- We can delete single as well as multiple records depending on the condition we provide in the WHERE clause. If we omit the WHERE clause then all of the records will be deleted and the table will be empty. 

-- Delete a Specific row

delete from emp
where EmployeeID = 20

select * from emp

-- Delete some records

delete from emp
where EmployeeID between 1 and 5

delete from emp
where EmployeeID in (6,9,10,12,14)

delete from emp
where lastname = 'Harris'

-- Delete without WHERE

delete from emp

-- Delete VS Truncate
-- DELETE
/*
1. The DELETE command is used to delete specified rows(one or more).
2. It is a DML(Data Manipulation Language) command.
3. DELETE supports the use of WHERE clause.
4. The DELETE statement removes rows one at a time and records an entry in the transaction log for each deleted row.
5. DELETE command is slower than TRUNCATE command.
6. The delete can be used with indexed views.
7. Delete Does not automatically reset the identity seed of the table. If you delete all rows and insert new ones, the identity values will continue from where they left off.
it can be rolled back
*/
-- TRUNCATE
/*
1. While this command is used to delete all the rows from a table.
2. it is a DDL(Data Definition Language) command.
3. TRUNCATE does not support the use of WHERE clause.
4. TRUNCATE TABLE removes the data by deallocating the data pages used to store the table data and records only the page deallocations in the transaction log.
5. While the TRUNCATE command is faster than the DELETE command.
6. Truncate cannot be used with indexed views.
7. TRUNCATE Resets the identity seed to its initial value. If the table has an identity column, TRUNCATE TABLE resets the seed to the original seed value specified during the column definition.
it can be rolled back


*/


SELECT * FROM EMP

BEGIN TRANSACTION

DELETE FROM EMP


SELECT * FROM EMP

ROLLBACK

SELECT * FROM EMP



BEGIN TRANSACTION

TRUNCATE TABLE EMP

SELECT * FROM EMP

ROLLBACK

SELECT * FROM EMP


BEGIN TRANSACTION

DELETE FROM EMP

COMMIT

SELECT * FROM EMP

--SAVEPOINT


--IDENTITY


create table emp5(id int identity,name varchar(50))

INSERT INTO EMP5
VALUES
(1,'PETER')

insert into emp5
select firstname from AdventureWorks2016.Person.Person
where BusinessEntityID between 1 and 100

select * from emp5

create table emp6(id int identity(100,5),name varchar(50))

insert into emp6
select firstname from AdventureWorks2016.Person.Person
where BusinessEntityID between 1 and 100

select * from emp6

SELECT @@IDENTITY

select SCOPE_IDENTITY()

select IDENT_CURRENT('emp5')

--Sequences

CREATE SEQUENCE dbo.EmpSequence
    AS INT
    START WITH 1
    INCREMENT BY 1;


    SELECT NEXT VALUE FOR dbo.EmpSequence AS EmpID;


CREATE TABLE EmployeesSeq
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO EmployeesSeq (EmpID, EmpName, Salary)
VALUES
(NEXT VALUE FOR dbo.EmpSequence, 'Rahul', 40000),
(10, 'Amit', 50000),
(NEXT VALUE FOR dbo.EmpSequence, 'Priya', 60000);

SELECT * FROM EmployeesSeq;

CREATE TABLE DepartmentsSeq
(
    DeptID INT PRIMARY KEY
        DEFAULT (NEXT VALUE FOR dbo.EmpSequence),
    DeptName VARCHAR(50)
);

INSERT INTO DepartmentsSeq (DeptName)
VALUES ('IT'), ('HR'), ('Finance');

SELECT * FROM DepartmentsSeq;


ALTER SEQUENCE dbo.EmpSequence
RESTART WITH 1;

--MERGE


Create table SourceT
(
ID int Not null,
FirstName varchar(50),
LastName Varchar(50)
)

Insert into SourceT
Values
(1,'Aaron','Smith'),
(2,'Neal','Garisson'),
(3,'Pat','Simons'),
(4,'Stacy','Peters'),
(5,'Nancy','Trump')

Select * from SourceT

Create table TargetT
(
ID int Not null,
FirstName varchar(50),
LastName Varchar(50)
)

Select * from SourceT
Select * from TargetT

merge targett as t
using sourcet as s
on t.id = s.id

when matched -- Condition of UPDATE

then update
set t.id = s.id,
t.firstname = s.firstname,
t.lastname = s.lastname

when not matched by target -- Condition for INSERT

then insert values(s.id,s.firstname,s.lastname)

when not matched by source -- Condition for DELETE

then delete

output $action,deleted.*,inserted.*;

update sourcet
set firstname = 'Steve',
lastname = 'Rogers'
where id = 5

insert into sourcet values(6,'Stella','John')

delete from SourceT
where id = 4
