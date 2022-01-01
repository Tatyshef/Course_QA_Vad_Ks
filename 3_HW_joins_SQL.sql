--SQL HomeWork 3. Joins

select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. +

select employees.employee_name, salary.monthly_salary from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000. +

select employees.employee_name, salary.monthly_salary  from employee_salary es 
join employees on es.employee_id = employees.id
join salary on es.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. +
-- (ЗП есть, но не понятно кто её получает.)

select employee_id, employee_name, monthly_salary from employees 
right join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where employee_name is null;

 -- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 
 --(ЗП есть, но не понятно кто её получает.)

select es.employee_id, employees.employee_name, salary.monthly_salary 
from employee_salary es 
left join employees on es.employee_id = employees.id
join salary on es.salary_id = salary.id
where monthly_salary < 2000 and employee_name is null;

-- 5. Найти всех работников кому не начислена ЗП. +

select employee_name, salary_id from employee_salary es
right join employees e on es.employee_id = e.id
where salary_id  is null;

--6. Вывести всех работников с названиями их должности.+

select employees.employee_name, roles.role_name from roles_employee re 
join employees on re.employee_id = employees.id
join roles on re.role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков.+

select employees.employee_name, roles.role_name from roles_employee re 
join employees on re.employee_id = employees.id
join roles on re.role_id = roles.id
where role_name like '%Java developer';

-- 8. Вывести имена и должность только Python разработчиков.+

select employees.employee_name, roles.role_name from roles_employee re 
join employees on re.employee_id = employees.id
join roles on re.role_id = roles.id
where role_name like '%Python developer';

--9. Вывести имена и должность всех QA инженеров.+

select employees.employee_name, roles.role_name from roles_employee re 
join employees on re.employee_id = employees.id
join roles on re.role_id = roles.id
where role_name like '% QA eng%';

-- 10. Вывести имена и должность ручных QA инженеров.+

select employees.employee_name, roles.role_name from roles_employee re 
join employees on re.employee_id = employees.id 
join roles on re.role_id = roles.id
where role_name like '%Manual QA eng%';

--11. Вывести имена и должность автоматизаторов QA. +

select employees.employee_name, roles.role_name from roles_employee re
join employees  on re.employee_id = employees.id
join roles on re.role_id = roles.id 
where role_name like '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов. +

select employee_name, role_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Junior%';

--13. Вывести имена и зарплаты Middle специалистов. +

select employee_name, role_name, monthly_salary from employees e 
join employee_salary es on e.id = es.employee_id
join salary on salary.id = es.salary_id
join roles_employee on e.id = roles_employee.role_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Middle%';

 --14. Вывести имена и зарплаты Senior специалистов. +

select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Senior%';

 --15. Вывести зарплаты Java разработчиков.+

select  monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Java developer';

-- 16. Вывести зарплаты Python разработчиков. +

select monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python developer';

 --17. Вывести имена и зарплаты Junior Python разработчиков.+

select employee_name, monthly_salary, role_name from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Junior Python developer';

 --18. Вывести имена и зарплаты Middle JS разработчиков. 

select employee_name, monthly_salary, role_name from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Middle JavaScript developer';

 --19. Вывести имена и зарплаты Senior Java разработчиков.

select employee_name, monthly_salary, role_name from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Senior Java developer';

 --20. Вывести зарплаты Junior QA инженеров. +

select  monthly_salary, role_name from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee  on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like 'Junior%QA eng%';

 --21. Вывести среднюю зарплату всех Junior специалистов. +

select avg(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where role_name like 'Junior%';

--22. Вывести сумму зарплат JS разработчиков. +

select sum(monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%JavaScript developer';

-- 23. Вывести минимальную ЗП QA инженеров. +

select min(monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA eng%';

--24. Вывести максимальную ЗП QA инженеров. +

select max(monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA eng%';

--25. Вывести количество QA инженеров. +

select count (role_name) as  count_QA_eng from roles_employee re 
join employees on re.employee_id = employees.id
join roles on re.role_id = roles.id
where role_name like '% QA eng%';

--26. Вывести количество Middle специалистов. +

select count(role_name) as count_Middle from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

--27. Вывести количество разработчиков. +

select count (role_name)  as count_developer from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.+

select sum(monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where role_name like '%developer';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию.+

select employee_name, role_name, monthly_salary from employees 
join employee_salary  on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee re on re.employee_id = employees.id
join roles on roles.id = re.role_id
order by monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary from employees 
join employee_salary  on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee re on re.employee_id = employees.id
join roles on roles.id = re.role_id
where monthly_salary between 1700 and 2300
order by monthly_salary;
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300. +

select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where monthly_salary <2300
order by monthly_salary;
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000. +

select employee_name, role_name, monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;