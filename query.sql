CREATE TABLE Employees (
    Id INT PRIMARY KEY,
    name VARCHAR(50),
    occupation VARCHAR(50),
    salary INT,
    leader_id INT
);


show databases;
use jannatul;
show tables;
INSERT INTO Employees (id, name, occupation, salary, leader_id) VALUES
(1, 'Joshim', 'Doctor', 45000, 1),
(2, 'Aleya', 'Doctor', 15000, 1),
(3, 'Galib', 'Engineer', 12000, 5),
(4, 'Caynath', 'Professor', 17000, 6),
(5, 'Majbah Habib', 'Singer', 35000, 6),
(6, 'Sanjidah', 'Singer', 40000, 0),
(7, 'Jui akter', 'Singer', 20000, 6),
(8, 'Korim', 'Architect', 5000, 5);

CREATE TABLE Salary (
    Id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    month VARCHAR(20) NOT NULL,
    given_salary DECIMAL(10, 2) NOT NULL,
    deferred_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO salary (Id, employee_id, month, given_salary, deferred_amount) VALUES
(1, 1, 'January', 45000, 5000),
(2, 1, 'February', 45000, 5000),
(3, 2, 'January', 15000, 500),
(4, 3, 'March', 12000, 120),
(5, 3, 'February', 12000, 120),
(6, 4, 'June', 17000, 1700),
(7, 4, 'July', 17000, 1700),
(8, 5, 'January', 30000, 0),
(9, 5, 'June', 17000, 0),
(10, 5, 'February', 35000, 3500),
(11, 6, 'March', 35000, 250),
(12, 6, 'April', 40000, 500);
select * from salary;
INSERT INTO salary (Id, employee_id, month, given_salary, deferred_amount) VALUES
(13, 3, 'March', 12000, 0);

SELECT e.name
FROM Employees e
LEFT JOIN Salary s
ON e.id = s.employee_id AND s.month = 'April'
WHERE s.id IS NULL;

SELECT e.id, e.name, e.occupation, e.salary, l.name AS leader_name
FROM Employees e
LEFT JOIN Employees l
ON e.leader_id = l.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employees
    )
);

SELECT e.name
FROM Employees e
WHERE e.id IN (
    SELECT employee_id
    FROM Salary
    WHERE month = 'January'
)
AND e.id NOT IN (
    SELECT employee_id
    FROM Salary
    WHERE month = 'February'
);


