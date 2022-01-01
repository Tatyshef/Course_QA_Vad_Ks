
2 ?? ?? SQL

--2_hw_SQL
-- 1. ??????? ??????? employees: - 
--id. serial,  primary key,
--employee_name. Varchar(50), not null


create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);
select * from employees;

--2. ????????? ??????? employee 70 ????????.

insert into employees (employee_name)
values ('Karina Tynyankina'),
		('Georgiy Shunkin'),
		('Gennadiy Dytin'),
		('Kira Markadeeva'),
		('Veronika Kilachkova'),
		('Lybov Solodneva'),
		('Artur Temenderov'),
		('Aleksandra Drogitskaya'),
		('Anastasiya Bosharina'),
		('Olga Seletskih'),
		('Taras Kuldoshin'),
		('Taras Lybimskiy'),
		('Natalya Belonova'),
		('Aleksandr Tanasov'),
		('Ruslan Farushev'),
		('Karina Radulgina'),
		('Pavel Chelogaev'),
		('Yliya Lukonskaya'),
		('Zinaida Milina'),
		('Eduard Saratovkin'),
		('Yana Osytina'),
		('Vasiliy Pripistsov'),
		('Yriy Badaykov'),
		('Elena Zastavkina'),
		('Nataliya Chipchina'),
		('Lybov Inozemieva'),
		('Ilya Dorodnev'),
		('Klavdiya Apitekova'),
		('Gerasim Golobkov'),
		('Violetta Nikanerova'),
		('Ivan Karepanov'),
		('Ivan Roschinskiy'),
		('Ruslan Imotdinov'),
		('Anastasiya Boronoeva'),
		('Natalya Lukichova'),
		('Vitaliy Kulevatov'),
		('Nadezhda Zobikova'),
		('Aleksandra Beryaneva'),
		('Stanislav Budtsev'),
		('Fedor Puzatyh'),
		('Svetlana Rachishkina'),
		('Karina Vynusheva'),
		('Sofiya Ochachovskaya'),
		('Yliya Matikova'),
		('Yana Daynakova'),
		('Andrey Pivovanov'),
		('Sofya Tazova'),
		('Ekaterina Neumoeva'),
		('Gerasim Bykin'),
		('Fedor Sormaev'),
		('Yliya Demihova'),
		('Darya Shodneva'),
		('Aleksandra Amerikova'),
		('Fedor Fedosimov'),
		('Gennadiy Svirchinkov'),
		('Boris Mahrinskiy'),
		('Alla Elashina'),
		('Anastasiya Vinyavskaya'),
		('Eduard Levchaev'),
		('Evgeniya Vahalina'),
		('Yriy Lestenkov'),
		('Valeriy Dolgoletov'),
		('Evgeniya Endrikova'),
		('Mihail Tuglanov'),
		('Elizaveta Tarapatina'),
		('Ivan Glazunov'),
		('Alla Bagzina'),
		('Petr Lutin'),
		('Karina Shahovtseva'),
		('Denis Rezonkin');
		
--3.??????? ??????? Salary, ????????? ? 15 ????????
	
create table salary (
	id serial primary key,
	monthly_salary int not null
	);
select * from salary;

--4. ????????? ??????? Salary 15 ????????

insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);
	
--5. ??????? ??????? employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
select * from employee_salary;

--6. ????????? ??????? employee_salary 40 ????????:
--- ? 10 ????? ?? 40 ???????? ?????????????? employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 4),
		(2, 3),
		(3, 7),
		(4, 5),
		(5, 9),
		(6, 3),
		(7, 6),
		(8, 4),
		(9, 10),
		(10, 2),
		(11, 8),
		(12, 10),
		(13, 7),
		(14, 3),
		(15, 13),
		(16, 1),
		(17, 11),
		(18, 4),
		(19, 13),
		(20, 14),
		(21, 5),
		(22, 6),
		(23, 4),
		(24, 8),
		(25, 1),
		(26, 4),
		(27, 8),
		(28, 10),
		(29, 14),
		(30, 13),
		(75, 4),
		(77, 3),
		(79, 5),
		(82, 4),
		(85, 8),
		(90, 7),
		(91, 11),
		(92, 14),
		(93, 3),
		(95, 10);
select * from employee_salary;

--7. ??????? ??????? roles
- --id. Serial  primary key,
- --role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
	);
select * from roles;

--8. ???????? ??? ?????? role_name ? int ?? varchar(30)

alter table roles
alter column role_name type varchar(30)
using role_name::varchar(30);

--9. ????????? ??????? roles 20 ????????:

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engeneer'),
		('Senior Manual QA engeneer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engeneer');
select * from roles;

--10. ??????? ??????? roles_employee
 --id. Serial  primary key,
--employee_id. Int, not null, unique (??????? ???? ??? ??????? employees, ???? id)
--role_id. Int, not null (??????? ???? ??? ??????? roles, ???? id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
	references employees (id),
	foreign key (role_id)
	references roles (id)
	);
select * from roles_employee;

--11. ????????? ??????? roles_employee 40 ????????:

insert into roles_employee (employee_id, role_id)
values (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 5),
		(2, 6),
		(4, 7),
		(8, 8),
		(9, 9),
		(12, 10),
		(13, 10),
		(14, 11),
		(15, 12),
		(16, 13),
		(17, 14),
		(18, 15),
		(19, 16),
		(24, 17),
		(25, 18),
		(26, 19),
		(27, 20),
		(28, 1),
		(29, 2),
		(30, 3),
		(31, 4),
		(32, 5),
		(33, 6),
		(35, 9),
		(36, 4),
		(37, 9),
		(38, 5),
		(39, 7),
		(40, 3);
select * from roles_employee;