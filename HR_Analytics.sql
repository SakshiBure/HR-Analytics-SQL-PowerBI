create database HR_Analytics;
use HR_Analytics;
------------DEPARTMENT-----------------------------
create table Departments(
department_id int primary key identity,
department_name varchar(100) not null,
manager_name varchar(100) not null,
location varchar(100) not null);
select * from Departments
drop table Departments
INSERT INTO Departments (department_name, manager_name, location) VALUES
('Human Resources','Anita Sharma','Pune'),
('Finance','Rahul Mehta','Mumbai'),
('Information Technology','Suresh Patil','Pune'),
('Sales','Priya Verma','Delhi'),
('Marketing','Neha Gupta','Bangalore'),
('Customer Support','Amit Kulkarni','Pune'),
('Research and Development','Vikas Singh','Hyderabad'),
('Operations','Kiran Deshmukh','Mumbai'),
('Administration','Sneha Joshi','Pune'),
('Procurement','Rohit Agarwal','Delhi'),
('Logistics','Pooja Nair','Chennai'),
('Quality Assurance','Manoj Patel','Ahmedabad'),
('Business Development','Arjun Kapoor','Delhi'),
('Legal','Swati Shah','Mumbai'),
('Training','Deepak Yadav','Pune'),
('Product Management','Kavita Reddy','Hyderabad'),
('Technical Support','Nitin Bansal','Noida'),
('Public Relations','Ritika Sinha','Delhi'),
('Security','Mahesh Chavan','Pune'),
('Data Analytics','Sakshi Kulkarni','Bangalore'),
('IT Infrastructure','Sanjay Pawar','Pune'),
('Digital Marketing','Tanvi Desai','Mumbai'),
('Accounts','Rajesh Gupta','Delhi'),
('Payroll','Anjali Patil','Pune'),
('Inventory','Sameer Khan','Hyderabad'),
('Customer Success','Pallavi Jadhav','Mumbai'),
('Software Development','Akash Sharma','Bangalore'),
('Testing','Meera Iyer','Chennai'),
('UI UX Design','Rohan Das','Kolkata'),
('Content Management','Divya Menon','Bangalore'),
('Network Administration','Harish Kumar','Pune'),
('Cloud Engineering','Aditya Singh','Hyderabad'),
('Database Management','Pratik Shah','Ahmedabad'),
('Technical Writing','Sunita Verma','Delhi'),
('Vendor Management','Kunal Mehta','Mumbai'),
('Risk Management','Bhavna Patel','Ahmedabad'),
('Strategy','Naveen Reddy','Hyderabad'),
('Compliance','Varsha Gupta','Delhi'),
('Innovation','Arpit Jain','Bangalore'),
('Sustainability','Ritu Sharma','Pune');


---------------EMPLOYEES------------------------
create table Employees(
employee_id int primary key identity(101,1),
employee_name varchar(100) not null ,
department_id int constraint did references Departments(department_id),
gender varchar(20) not null,
salary float,
age int,
hire_date date,
city varchar(20),
performance_rating int);
select * from Employees;
INSERT INTO Employees (employee_name, department_id, gender, salary, age, hire_date, city, performance_rating) VALUES
('Amit Sharma',1,'Male',55000,29,'2019-03-10','Pune',4),
('Priya Verma',2,'Female',62000,31,'2018-07-15','Mumbai',3),
('Rahul Patil',3,'Male',72000,35,'2017-01-20','Pune',5),
('Sneha Gupta',4,'Female',48000,27,'2021-05-12','Delhi',4),
('Arjun Mehta',5,'Male',51000,28,'2020-08-01','Bangalore',3),
('Neha Kulkarni',6,'Female',46000,26,'2022-02-14','Pune',4),
('Rohit Singh',7,'Male',78000,36,'2016-09-30','Hyderabad',5),
('Pooja Nair',8,'Female',54000,30,'2019-11-18','Mumbai',4),
('Vikas Yadav',9,'Male',47000,32,'2018-04-25','Pune',3),
('Kavita Desai',10,'Female',59000,29,'2020-06-10','Delhi',4),

('Sanjay Pawar',11,'Male',65000,34,'2017-12-03','Pune',5),
('Tanvi Shah',12,'Female',52000,28,'2021-01-17','Mumbai',3),
('Rajesh Gupta',13,'Male',73000,37,'2016-03-21','Delhi',5),
('Anjali Patil',14,'Female',49000,27,'2022-07-09','Pune',4),
('Sameer Khan',15,'Male',56000,31,'2019-10-13','Hyderabad',3),
('Pallavi Jadhav',16,'Female',61000,30,'2018-05-26','Mumbai',4),
('Akash Sharma',17,'Male',80000,33,'2017-02-11','Bangalore',5),
('Meera Iyer',18,'Female',53000,28,'2020-09-19','Chennai',4),
('Rohan Das',19,'Male',58000,29,'2019-07-08','Kolkata',3),
('Divya Menon',20,'Female',60000,32,'2018-12-01','Bangalore',4),

('Harish Kumar',21,'Male',71000,35,'2017-06-14','Pune',5),
('Aditya Singh',22,'Male',76000,34,'2016-11-22','Hyderabad',5),
('Pratik Shah',23,'Male',69000,33,'2018-08-05','Ahmedabad',4),
('Sunita Verma',24,'Female',47000,26,'2021-03-16','Delhi',3),
('Kunal Mehta',25,'Male',62000,30,'2019-04-12','Mumbai',4),
('Bhavna Patel',26,'Female',54000,29,'2020-01-29','Ahmedabad',4),
('Naveen Reddy',27,'Male',77000,36,'2017-10-07','Hyderabad',5),
('Varsha Gupta',28,'Female',51000,28,'2022-06-18','Delhi',3),
('Arpit Jain',29,'Male',63000,31,'2018-02-09','Bangalore',4),
('Ritu Sharma',30,'Female',55000,27,'2021-09-03','Pune',4),

('Mohit Agarwal',31,'Male',70000,34,'2017-05-15','Pune',5),
('Shreya Kulkarni',32,'Female',64000,30,'2019-12-20','Mumbai',4),
('Nikhil Patil',33,'Male',68000,32,'2018-06-11','Ahmedabad',4),
('Aarti Singh',34,'Female',50000,28,'2021-04-23','Delhi',3),
('Deepak Yadav',35,'Male',72000,35,'2016-09-05','Mumbai',5),
('Komal Shah',36,'Female',56000,29,'2020-10-17','Ahmedabad',4),
('Rakesh Chavan',37,'Male',75000,36,'2017-03-30','Hyderabad',5),
('Sonal Gupta',38,'Female',52000,27,'2022-01-08','Delhi',3),
('Ankit Verma',39,'Male',67000,33,'2018-07-27','Bangalore',4),
('Pooja Sharma',40,'Female',58000,30,'2019-02-14','Pune',4);


--------------------Attrition---------------------------------
create table Attrition(
attrition_id int primary key identity(201,1),
employee_id int constraint eid references Employees(employee_id),
attrition_status varchar(10),
attrition_date date,
reason varchar(200));
select * from Attrition
INSERT INTO Attrition (employee_id, attrition_status, attrition_date, reason) VALUES
(101,'No',NULL,NULL),
(102,'No',NULL,NULL),
(103,'No',NULL,NULL),
(104,'Yes','2023-02-10','Better Job Opportunity'),
(105,'No',NULL,NULL),
(106,'No',NULL,NULL),
(107,'Yes','2022-11-15','Relocation'),
(108,'No',NULL,NULL),
(109,'No',NULL,NULL),
(110,'Yes','2023-05-21','Higher Studies'),

(111,'No',NULL,NULL),
(112,'No',NULL,NULL),
(113,'Yes','2022-09-10','Career Change'),
(114,'No',NULL,NULL),
(115,'No',NULL,NULL),
(116,'Yes','2023-03-18','Personal Reasons'),
(117,'No',NULL,NULL),
(118,'No',NULL,NULL),
(119,'Yes','2022-12-01','Better Salary'),
(120,'No',NULL,NULL),

(121,'No',NULL,NULL),
(122,'No',NULL,NULL),
(123,'Yes','2023-01-25','Work Life Balance'),
(124,'No',NULL,NULL),
(125,'No',NULL,NULL),
(126,'Yes','2022-10-05','Family Relocation'),
(127,'No',NULL,NULL),
(128,'No',NULL,NULL),
(129,'Yes','2023-06-11','Health Reasons'),
(130,'No',NULL,NULL),

(131,'No',NULL,NULL),
(132,'No',NULL,NULL),
(133,'Yes','2022-08-14','Higher Education'),
(134,'No',NULL,NULL),
(135,'No',NULL,NULL),
(136,'Yes','2023-04-07','Better Career Growth'),
(137,'No',NULL,NULL),
(138,'No',NULL,NULL),
(139,'Yes','2023-07-19','Startup Opportunity'),
(140,'No',NULL,NULL);

