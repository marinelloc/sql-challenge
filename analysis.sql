Select 
	E.emp_no,
	E.last_name,
	E.first_name,
	E.sex,
	S.salary
From employees E
LEFT JOIN salaries S ON E.emp_no = S.emp_no;

Select 
	E.first_name,
	E.last_name,
	E.hire_date
From employees E
WHERE SUBSTRING(CAST(E.hire_date as VARCHAR), 1, 4) = '1986';

select 
	E.first_name || ' ' || E.last_name as Manager,
	DM.dept_no,
	D.dept_name,
	E.emp_no,
	E.last_name,
	E.first_name
from employees E
INNER JOIN dept_manager DM ON E.emp_no = DM.emp_no
LEFT JOIN departments D on DM.dept_no = D.dept_no;

SELECT 
	DE.dept_no,
	DE.emp_no,
	E.last_name,
	E.first_name,
	D.dept_name
FROM dept_emp DE
LEFT JOIN employees E ON DE.emp_no = E.emp_no
LEFT JOIN departments D on DE.dept_no = D.dept_no;

Select 
	E.first_name,
	E.last_name,
	E.sex
From employees E
WHERE E.first_name = 'Hercules'
AND E.last_name LIKE 'B%';


Select 
	E.emp_no,
	E.last_name,
	E.first_name
From employees E
WHERE E.emp_no IN (
	SELECT DE.emp_no
	FROM dept_emp DE
	WHERE DE.dept_no = 'd007');
	
Select 
	E.emp_no,
	E.last_name,
	E.first_name,
	D.dept_name
From employees E
LEFT JOIN dept_emp DE ON  E.emp_no = DE.emp_no 
LEFT JOIN departments D on DE.dept_no = D.dept_no
WHERE DE.dept_no IN ('d007', 'd005');

SELECT E.last_name, count(E.last_name) 
From employees E
GROUP BY E.last_name
ORDER BY 2 DESC;



	











