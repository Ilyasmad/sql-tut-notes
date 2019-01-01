-- Find all employees ordered by salary
SELECT * FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex then name
SELECT * FROM employee
ORDER BY sex, first_name, last_name;

-- Find out all the different genders
SELECT DISTINCT sex
FROM employee;

-- NESTED QUERIES
-- Find names of all employees who have sold over 30,000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id 
    FROM works_with
    WHERE works_with.total_sales > 30000
);

-- Find all the clients who are handled by the branch michael scott manages
SELECT client.client_name
FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id IN (
        SELECT employee.emp_id
        FROM employee
        WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott'
    )
);

