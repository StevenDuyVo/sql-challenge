--List the employee number, last name, first name, sex, and salary of each employee
SELECT emp_no, last_name, first_name, sex, Salary.salary
FROM Employees
JOIN Salary ON Employees.emp_no = Salary.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT Employees.first_name, Employees.last_name, Employees.hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT DepartmentManager.dept_no, departments.dept_name, DepartmentManager.emp_no, Employees.last_name, Employees.first_name
FROM DepartmentManager
JOIN Employees ON DepartmentManager.emp_no = Employees.emp_no
JOIN departments ON DepartmentManager.dept_no = Department.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, DepartmentEmployees.dept_no, Department.dept_name
FROM Employees
JOIN DepartmentEmployees ON Employees.emp_no = DepartmentEmployees.emp_no
JOIN Department ON DepartmentEmployees.dept_no = Department.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT Employees.emp_no, Employees.last_name, Employees.first_name
FROM Employees
JOIN Dept_emp ON Employees.emp_no = DepartmentEmployees.emp_no
JOIN Department ON DepartmentEmployees.dept_no = Department.dept_no
WHERE Department.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Department.dept_name
FROM Employees
JOIN DepartmentEmployees ON Employees.emp_no = dDepartmentEmployees.emp_no
JOIN Department ON DepartmentEmployees.dept_no = Department.dept_no
WHERE Department.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;