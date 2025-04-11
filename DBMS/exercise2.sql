INSERT INTO Department VALUES (30, 'sales', 'india');
INSERT INTO Department VALUES (40, 'Marketing', 'india');
INSERT INTO Department VALUES (50, 'HR', 'india');

 select * from Department;
+--------+------------+----------+
| deptno | deptname   | location |
+--------+------------+----------+
|     10 | accounting | india    |
|     20 | research   | india    |
|     30 | sales      | india    |
|     40 | Marketing  | india    |
|     50 | HR         | india    |
+--------+------------+----------+



INSERT INTO Employee VALUES (101, 'Abhi', 'clerk', 104, '2002-08-15', 800, NULL, 20);
INSERT INTO Employee VALUES (102, 'Achu', 'saleswomen', 103, '2001-08-04', 1600, 300, 30);
INSERT INTO Employee VALUES (103, 'Anju', 'saleswomen', 104, '2003-03-12', 1250, 500, 30);
INSERT INTO Employee VALUES (104, 'malu', 'Manager', NULL, '2002-01-23', 2970, NULL, 20);
INSERT INTO Employee VALUES (105, 'pachi', 'clerk', 104, '2002-04-10', 970, NULL, 10);


select * from Employee;
+-------+-------+------------+-----------+------------+--------+-----------+--------+
| empno | ename | job        | managerid | hiredate   | salary | commision | deptno |
+-------+-------+------------+-----------+------------+--------+-----------+--------+
|   101 | Abhi  | clerk      |       104 | 2002-08-15 |    800 |      NULL |     20 |
|   102 | Achu  | saleswomen |       103 | 2001-08-04 |   1600 |       300 |     30 |
|   103 | Anju  | saleswomen |       104 | 2003-03-12 |   1250 |       500 |     30 |
|   104 | malu  | Manager    |      NULL | 2002-01-23 |   2970 |      NULL |     20 |
|   105 | pachi | clerk      |       104 | 2002-04-10 |    970 |      NULL |     10 |
+-------+-------+------------+-----------+------------+--------+-----------+--------+



INSERT INTO salarygrade VALUES (1, 700, 1200);
INSERT INTO salarygrade VALUES (2, 1201, 1400);
INSERT INTO salarygrade VALUES (3, 1401, 2000);
INSERT INTO salarygrade VALUES (4, 2001, 3000);
INSERT INTO salarygrade VALUES (5, 3001, 9999);


SELECT * FROM salarygrade;

 select * from salarygrade;
+-------+-----------+------------+
| grade | lowsalary | highsalary |
+-------+-----------+------------+
|     1 |       700 |       1200 |
|     2 |      1201 |       1400 |
|     3 |      1401 |       2000 |
|     4 |      2001 |       3000 |
|     5 |      3001 |       9999 |
+-------+-----------+------------+
SELECT empno, ename FROM Employee;
+-------+-------+
| empno | ename |
+-------+-------+
|   101 | Abhi  |
|   102 | Achu  |
|   103 | Anju  |
|   104 | malu  |
|   105 | pachi |
+-------+-------+
SELECT * FROM Employee WHERE salary BETWEEN 1000 AND 2000;

+-------+-------+------------+-----------+------------+--------+-----------+--------+
| empno | ename | job        | managerid | hiredate   | salary | commision | deptno |
+-------+-------+------------+-----------+------------+--------+-----------+--------+
|   102 | Achu  | saleswomen |       103 | 2001-08-04 |   1600 |       300 |     30 |
|   103 | Anju  | saleswomen |       104 | 2003-03-12 |   1250 |       500 |     30 |
+-------+-------+------------+-----------+------------+--------+-----------+--------+

SELECT deptname, deptno FROM Department ORDER BY deptname;

+------------+--------+
| deptname   | deptno |
+------------+--------+
| accounting |     10 |
| HR         |     50 |
| Marketing  |     40 |
| research   |     20 |
| sales      |     30 |
+------------+--------+

SELECT * FROM Employee WHERE deptno IN (10, 20);

+-------+-------+---------+-----------+------------+--------+-----------+--------+
| empno | ename | job     | managerid | hiredate   | salary | commision | deptno |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
|   101 | Abhi  | clerk   |       104 | 2002-08-15 |    800 |      NULL |     20 |
|   104 | malu  | Manager |      NULL | 2002-01-23 |   2970 |      NULL |     20 |
|   105 | pachi | clerk   |       104 | 2002-04-10 |    970 |      NULL |     10 |
+-------+-------+---------+-----------+------------+--------+-----------+--------+

SELECT ename, job FROM Employee WHERE job = 'clerk' AND deptno = 20;

+-------+-------+
| ename | job   |
+-------+-------+
| Abhi  | clerk |
+-------+-------+

SELECT ename FROM Employee WHERE ename LIKE '%bh%' OR ename LIKE '%ch%';

+-------+
| ename |
+-------+
| Abhi  |
| Achu  |
| pachi |
+-------+

SELECT ename, job, salary FROM Employee WHERE managerid IS NOT NULL;

+-------+------------+--------+
| ename | job        | salary |
+-------+------------+--------+
| Abhi  | clerk      |    800 |
| Achu  | saleswomen |   1600 |
| Anju  | saleswomen |   1250 |
| pachi | clerk      |    970 |
+-------+------------+--------+

SELECT ename, (salary * 12 + IFNULL(commision, 0)) AS annual_remuneration FROM Employee;

+-------+---------------------+
| ename | annual_remuneration |
+-------+---------------------+
| Abhi  |                9600 |
| Achu  |               19500 |
| Anju  |               15500 |
| malu  |               35640 |
| pachi |               11640 |
+-------+---------------------+

select*from Employee where year(hiredate)=2002;
+-------+-------+---------+-----------+------------+--------+-----------+--------+
| empno | ename | job     | managerid | hiredate   | salary | commision | deptno |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
|   101 | Abhi  | clerk   |       104 | 2002-08-15 |    800 |      NULL |     20 |
|   104 | malu  | Manager |      NULL | 2002-01-23 |   2970 |      NULL |     20 |
|   105 | pachi | clerk   |       104 | 2002-04-10 |    970 |      NULL |     10 |
+-------+-------+---------+-----------+------------+--------+-----------+--------+

 select ename,job,(salary *12) As annual_salary, commision from Employee where job='saleswomen' and salary>ifnull(commision,0)order by salary desc;
+-------+------------+---------------+-----------+
| ename | job        | annual_salary | commision |
+-------+------------+---------------+-----------+
| Achu  | saleswomen |         19200 |       300 |
| Anju  | saleswomen |         15000 |       500 |
+-------+------------+---------------+-----------+

 select ename,round (salary * 1.125) as increased_salary from Employee;
+-------+------------------+
| ename | increased_salary |
+-------+------------------+
| Abhi  |              900 |
| Achu  |             1800 |
| Anju  |             1406 |
| malu  |             3341 |
| pachi |             1091 |
+-------+------------------+

select 'Employee and Job' as "Employee And Job" union all select concat(ename,'  ',job)from Employee where ename in('malu','pachi');
+------------------+
| Employee And Job |
+------------------+
| Employee and Job |
| malu  Manager    |
| pachi  clerk     |
+------------------+

select 'Employee and Job' union all select concat(ename,'(',job,')')from Employee where ename in ('malu','pachi');
+------------------+
| Employee and Job |
+------------------+
| Employee and Job |
| malu(Manager)    |
| pachi(clerk)     |
+------------------+

 select min(salary) as min_salary,max(salary) as max_salary,avg(salary) as avg_salary from Employee;
+------------+------------+------------+
| min_salary | max_salary | avg_salary |
+------------+------------+------------+
|        800 |       2970 |  1518.0000 |
+------------+------------+------------+

 select job ,min(salary) as min_salary,max(salary) as max_salary from Employee group by job;
+------------+------------+------------+
| job        | min_salary | max_salary |
+------------+------------+------------+
| clerk      |        800 |        970 |
| saleswomen |       1250 |       1600 |
| Manager    |       2970 |       2970 |
+------------+------------+------------+

select count(*) as total_managers from Employee where job='MANAGER';
+----------------+
| total_managers |
+----------------+
|              1 |
+----------------+

select job,avg(salary) as avg_salary,avg(salary*ifnull(commision,0)) as avg_remuneration from EMployee group by job;
+------------+------------+------------------+
| job        | avg_salary | avg_remuneration |
+------------+------------+------------------+
| clerk      |   885.0000 |           0.0000 |
| saleswomen |  1425.0000 |      552500.0000 |
| Manager    |  2970.0000 |           0.0000 |
+------------+------------+------------------+

 select max(salary)- min(salary) as salary_difference from Employee;
+-------------------+
| salary_difference |
+-------------------+
|              2170 |
+-------------------+

select deptno,count(*) as Employee_count from Employee group by deptno having count(*)>1;
+--------+----------------+
| deptno | Employee_count |
+--------+----------------+
|     20 |              2 |
|     30 |              2 |
+--------+----------------+

 select case when count(empno)=count(distinct empno)then 'all empnos are unique' else 'duplicate empnos found' end as result from Employee;
+-----------------------+
| result                |
+-----------------------+
| all empnos are unique |
+-----------------------+
