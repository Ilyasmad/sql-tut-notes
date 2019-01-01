-- Find the number of employees
SELECT COUNT(super_id) FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > to_date('1970-01-01', 'yyyy-mm-dd');

-- Find the average salary of all employees who are not a supervisor
SELECT AVG(salary) FROM employee;

-- Find the sum of all the employees salary
SELECT SUM(salary) FROM employee;

-- Find out how many males and how many females there are
SELECT COUNT(sex), sex 
FROM employee
GROUP BY sex;

-- Find the total sales of each salesmen
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- % = any # characters, _ = one character
-- Find any client's who are in the LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any client's who are in the LLC
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%label%';

-- find a list of employees and branch names
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;