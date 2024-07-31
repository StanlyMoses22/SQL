Create database Project1;
use Project1;
Create table Emp_det (Emp_ID int, Emp_Name varchar(20),	Designation varchar(20), Dep_No int, Date_Of_Join date , primary key (Emp_ID));
describe Emp_det;
select * from Emp_det;

insert into Emp_det (Emp_ID, Emp_Name, Designation, Dep_No, Date_Of_Join) values
(17001,	'Geetha',	'Manager',	50,	'2022-05-10'),
(17002,	'Guru',	'Junior Associates',	50,	'2022-05-12'),
(17003,	'Gokul',	'Senior Manager',	50,	'2022-05-15'),
(17004,	'Mani',	'HR',	60,	'2022-05-20'),
(17005,	'Moorthy',	'General Manager',	50,	'2022-05-23'),
(17006,	'Amutha',	'Team Lead',	50,	'2022-06-05'),
(17007,	'Jaga',	'Senior Manager',	70,	'2022-06-06'),
(17008,	'Pavithra',	'Senior HR',	60,	'2022-06-07'),
(17009,	'Arthi',	'General Manager',	50,	'2022-06-08'),
(17010,	'Kabilan',	'Team Lead',	70,	'2022-06-09'),
(17011,	'Manasi',	'Manager',	70,	'2022-06-10'),
(17012,	'Suja',	'Junior Associates',	50,	'2022-06-11'),
(17013,	'Arun',	'Senior Manager',	60,	'2022-0-12'),
(17014,	'Deepa',	'HR',	60,	'2022-06-13'),
(17015,	'Sindhu',	'General Manager',	80,	'2022-06-14'),
(17016,	'Madhavi',	'Junior Associates',	50,	'2022-06-15'),
(17017,	'Swetha',	'Junior Associates',	70,	'2022-06-16'),
(17018,	'Selvi',	'Junior Associates',	70,	'2022-06-17'),
(17019,	'Pooja',	'Junior Associates',	70,	'2022-06-18'),
(17020,	'Lakshmi',	'Junior Associates',	70,	'2022-06-19'),
(17021,	'Veeramani',	'Junior Associates',	80,	'2022/06/20'),
(17022,	'Pandian',	'Junior Associates',	80,	'2022/06/21'),
(17023,	'Veera',	'Junior Associates',	80,	'2022/06/22'),
(17024,	'Devi', 'General Manager',	70,	'2022/06/23'),
(17025,	'Devan',	'Team Lead',	60,	'2022/06/24'),
(17026,	'Keerthi',	'Manager',	60,	'2022/06/25'),
(17027,	'Venkatesh',	'Senior Manager',	80,	'2022/06/26'),
(17028, 'Raja',	'HR',	60,	'2022/06/27'),
(17029,	'Priya',	'General Manager',	70,	'2022/06/28'),
(17030,	'mariya',	'Team Lead',	80,	'2022/06/29'),
(17031, 'srinivasan',	'General Manager',	70,	'2022/06/30'),
(17032,	'ganesan',	'Team Lead',	80,	'2022/07/01'),
(17033,	'Praveen',	'Manager',	80,	'2022/07/02');

Select Distinct Date_Of_Join from Emp_det;
Select * from Emp_det order by Dep_No asc;
Select * from Emp_det order by Dep_No desc;
select * from emp_det where Designation = 'Junior Associates' or
Designation = 'Senior Manager' order by Designation desc;
Delete from emp_det where Emp_id = 17028;
alter Table Emp_det add column hire_date date;
select  emp_name from emp_det where length(EMp_name)=5;
select * from Emp_det where Date_Of_Join like '2022-07%';
Select Emp_ID, Emp_Name, Date_Of_Join, timestampdiff(year, Date_Of_Join, curdate()) as Emp_exp from Emp_det where Emp_ID = 17004;
SELECT Designation, COUNT(*) AS Num_Employees
FROM Emp_det
GROUP BY Designation;
SELECT Dep_No, AVG(YEAR(CURDATE()) - YEAR(Date_Of_Join)) AS Avg_Years_With_Company
FROM Emp_det
GROUP BY Dep_No;
SELECT 
	SUM(DATE_FORMAT(Date_Of_Join, '%Y')) AS Total_Year_Sum,AVG(DATE_FORMAT(Date_Of_Join, '%Y')) AS Yearly_Average,
    COUNT(Date_Of_Join) AS Total_Count,
    MAX(Date_Of_Join) AS Latest_Join_Date,
    MIN(Date_Of_Join) AS Earliest_Join_Date
FROM Emp_det;

create table Sal_det1 (Salary_ID int, Emp_Id int, Salary_Date date, Branch_ID int, Amount int, primary key(Salary_ID));

select * from Sal_det1;
insert into sal_det1(Salary_id, Emp_id, Salary_Date, Branch_id, Amount) values
(18001,	17001,	'2022/06/10',	241,	'35000'),
(18002,	17002,	'2022/06/12',	241,	'14000'),
(18003,	17003,	'2022/06/15',	241,	'28000'),
(18004,	17004,	'2022/06/20',	242,	'18000'),
(18005,	17005,	'2022/06/23',	241,	'30000'),
(18006,	17006,	'2022/07/06',	241,	'23000'),
(18007,	17007,	'2022/07/07',	243,	'28000'),
(18008,	17008,	'2022/07/08',	242,	'18000'),
(18009,	17009,	'2022/07/09',	241,	'30000'),
(18010,	17010,	'2022/07/10',	243,	'23000'),
(18011,	17011,	'2022/07/11',	243,	'35000'),
(18012,	17012,	'2022/07/12',	241,	'14000'),
(18013,	17013,	'2022/07/13',	242,	'28000'),
(18014,	17014,	'2022/07/14',	242,	'18000'),
(18015,	17015,	'2022/07/15',	204,	'30000'),
(18016,	17016,	'2022/07/16',	241,	'14000'),
(18017,	17017,	'2022/07/17',	243,	'14000'),
(18018,	17018,	'2022/07/18',	243,	'14000'),
(18019,	17019,	'2022/07/19',	243,	'14000'),
(18020,	17020,	'2022/07/20',	243,	'14000'),
(18021,	17021,	'2022/07/21',	244,	'14000'),
(18022,	17022,	'2022/07/22',	244,	'14000'),
(18023,	17023,	'2022/07/23',	244,	'14000'),
(18024,	17024,	'2022/07/24',	243,	'30000'),
(18025,	17025,	'2022/07/25',	242,	'23000'),
(18026,	17026,	'2022/07/26',	242,	'35000'),
(18027,	17027,	'2022/07/27',	244,	'28000'),
(18028,	17028,	'2022/07/28',	242,	'18000'),
(18029,	17029,	'2022/07/29',	243,	'30000'),
(18030,	17030,	'2022/07/30',	244,	'23000'),
(18031,	17031,	'2022/07/31',	243,	'30000'),
(18032,	17032,	'2022/08/01',	244,	'23000'),
(18033,	17033,	'2022/08/02',	244,	'35000');

SELECT *
FROM Emp_det
INNER JOIN Sal_det1 ON Emp_det.Emp_id = Sal_det1.Emp_id;
SELECT *
FROM Emp_det
RIGHT JOIN Sal_det1 ON Emp_det.Emp_id= Sal_det1.Emp_id;
SELECT *
FROM Emp_det
LEFT JOIN Sal_det1 ON Emp_det.Emp_id= Sal_det1.Emp_id;
SELECT *
FROM Emp_det
FULL JOIN Sal_det1 ON Emp_det.Emp_id= Sal_det1.Emp_id;







