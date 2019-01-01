INSERT INTO branch VALUES(4,'Bufallo', NULL, NULL);

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
FULL OUTER JOIN branch
ON employee.emp_id = branch.mgr_id;