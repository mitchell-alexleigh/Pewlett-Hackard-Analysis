select 
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date 
into retirement_titles
from employees e 
join titles t on e.emp_no = t.emp_no 
where e.birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no 
;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT 
	DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
into unique_titles
FROM retirement_titles rt 
ORDER BY rt.emp_no , rt.to_date DESC;


select count (title),title
from unique_titles
group by title
order by count(title) desc ;

select 
	distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date, 
	de.from_date,
	de.to_date,
	t.title 
into mentorship_eligibilty
from employees e 
join dept_emp de on de.emp_no = e.emp_no 
join titles t on t.emp_no =e.emp_no 
where e.birth_date between '1965-01-01' AND '1965-12-31'
order by e.emp_no 
