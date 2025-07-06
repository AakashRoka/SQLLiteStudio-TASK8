# SQLLiteStudio-TASK8
# 🧠 SQL Modularization with Stored Procedures and Functions

## 🎯 Objective
Learn how to modularize SQL logic using **reusable SQL blocks** such as **Stored Procedures** and **Functions** with conditional logic and parameters.

---

## 🛠 Tools Used

- **MySQL Workbench** (Recommended)
- **DB Browser for SQLite** (for reference)
- ⚠️ *Note:* Online compilers like OneCompiler may not fully support procedures/functions due to restrictions.

---

## 📦 Deliverables

- ✅ One `Stored Procedure`
- ✅ One `User-Defined Function`
- ✅ Sample table `employees` with data
- ✅ Example queries demonstrating modular logic

---

## 📄 Description

This project showcases how to use:
- `CREATE PROCEDURE` to modularize repetitive tasks (e.g., salary updates).
- `CREATE FUNCTION` to classify or calculate data based on conditions.

---

## 🧩 Features

### ✅ Stored Procedure
Updates employee salary by a given percentage.

```sql
DELIMITER //
CREATE PROCEDURE UpdateSalary(IN p_emp_id INT, IN p_percent DECIMAL(5,2))
BEGIN
  UPDATE employees
  SET emp_salary = emp_salary + (emp_salary * p_percent / 100)
  WHERE emp_id = p_emp_id;
END;
//
DELIMITER ;
