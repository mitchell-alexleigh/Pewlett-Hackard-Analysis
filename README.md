# Pewlett-Hackard Analysis

## Overview 

The purpose of this project is to find information on employees who will be retiring in the near future. It includes information on these employees, current title of each of these employees, a breakdown of titles that will need to be filled, and the employees available to mentor,   

## Results

* Information on employees retiring in the near future 
	* Gets the employee number, first name, last name, title, title from date and title to date for each employee who was born between 1952 and 1995
	* [Full Export]( https://github.com/mitchell-alexleigh/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)
	* Data sample

![Employee Information](/Resources/emp_info.png)

* Current Titles of Employees 
	* Gets the employee number, first name, last name, and only the current title for each employee in the previous table  
	* [Full Export]( https://github.com/mitchell-alexleigh/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) 
	* Data Sample 

	![Current Titles](/Resources/uni_titles.png)

* Titles of employees retiring in the near future
	* Gets a count of employees who are about to retire by each title 
	* [Full Export]( https://github.com/mitchell-alexleigh/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)
	* Data 
	
	![Title Count](/Resources/title_count.png)

* Employees available for mentorship 
	* Gets employee number, first name, last name, birth date, title from date, and title to date for each employee where with a birthday between January 1, 1965 and December 31, 1965
	* [Full Export]( https://github.com/mitchell-alexleigh/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibilty.csv)
	* Data Sample 
	
	![Mentors](/Resources/mentor.png)

## Summary
### Number of roles impacted
90,398 Employees will retire in the near future

### Mentorship Program 
 
Under the current conditions, there are not enough mentors to train all of the roles to be filled. The table below breaks down the number of positions that will need to be filled in the near future, the number of mentors in each role and the number of employees each mentor would need to train. For each position the number of roles to fill too large for one mentor and there are no eligible mentors for to train the manager positions. 

![Mentor per Mentee](/Resources/mentor_mentee.png) 

