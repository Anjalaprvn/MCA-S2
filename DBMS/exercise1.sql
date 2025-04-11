create database Company;
use company;
create table Employee(
 	empno int primary key,
	ename varchar(30),job varchar(10),
	managerid int, 
	hiredate date,salary int, 
	commision int,deptno int
	);

describe Employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| empno     | int         | NO   | PRI | NULL    |       |
| ename     | varchar(30) | YES  |     | NULL    |       |
| job       | varchar(10) | YES  |     | NULL    |       |
| managerid | int         | YES  |     | NULL    |       |
| hiredate  | date        | YES  |     | NULL    |       |
| salary    | int         | YES  |     | NULL    |       |
| commision | int         | YES  |     | NULL    |       |
| deptno    | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

create table Department(
	deptno int primary key,
	deptname varchar (15),
	location varchar(10)
	);

describe Department;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| deptno   | int         | NO   | PRI | NULL    |       |
| deptname | varchar(15) | YES  |     | NULL    |       |
| location | varchar(10) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

mysql> create table salarygrade(
	grade int primary key,
	 lowsalary int,
	 highsalary int
	);

describe salarygade;
mysql> describe salarygrade;
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| grade      | int  | NO   | PRI | NULL    |       |
| lowsalary  | int  | YES  |     | NULL    |       |
| highsalary | int  | YES  |     | NULL    |       |
+------------+------+------+-----+---------+-------+
