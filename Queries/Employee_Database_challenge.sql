-- 
select 
	e.emp_no as "Employee number",
	e.first_name as "First Name",
	e.last_name as "Last Name",
	t.title as "Title",
	t.from_date as "Title From Date",
	t.to_date as "Title to Date"
into retirement_titles
from employees e 
inner join titles t on e.emp_no = t.emp_no 
where e.birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no 
;


-- Gets the Current Titles of Retiring employees
SELECT 
	DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
into unique_titles
FROM retirement_titles rt 
ORDER BY rt.emp_no , rt.to_date DESC;

-- Gets count of retiring employees by title
select count (title) as title_count,title
into retiring_titles
into rit_count
from unique_titles
group by title
order by count(title) desc ;

--Gets employees who are eligible to be mentors
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
inner join dept_emp de on de.emp_no = e.emp_no 
inner join titles t on t.emp_no =e.emp_no 
where e.birth_date between '1965-01-01' AND '1965-12-31'
order by e.emp_no ;

--Gets count of mentors by title
select me. title, count(me.title) as mentor_count
into mentor_count
from mentorship_eligibilty me
group by me.title 
order by count(me.title) desc ;

-- Compares positions that need to be filled by eligible mentors
select rc.title as "Title", 
rc.title_count as "Retiree Count", 
mc.mentor_count as "Mentor Count", 
(rc.title_count/mc.mentor_count) as "Role per Mentor"
from rit_count rc 
full outer join mentor_count mc on mc.title = rc.title


