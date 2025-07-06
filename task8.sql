CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Aakash', 40000),
(2, 'Ravi', 55000),
(3, 'Sita', 60000),
(4, 'John', 30000);

DELIMITER //
CREATE PROCEDURE UpdateSalary(IN p_emp_id INT, IN p_percent DECIMAL(5,2))
BEGIN
  UPDATE employees
  SET emp_salary = emp_salary + (emp_salary * p_percent / 100)
  WHERE emp_id = p_emp_id;
END;
//
DELIMITER ;

CALL UpdateSalary(1, 10);

DELIMITER //
CREATE FUNCTION IsHighEarner(salary DECIMAL(10,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE status VARCHAR(20);
  IF salary >= 50000 THEN
    SET status = 'High Earner';
  ELSE
    SET status = 'Normal Earner';
  END IF;
  RETURN status;
END;
//
DELIMITER ;

SELECT emp_name, emp_salary, IsHighEarner(emp_salary) AS status FROM employees;


