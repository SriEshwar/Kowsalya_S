create database CompanyDetails;
use CompanyDetails;

create table Programmer(
    Pname varchar(8) NOT NULL,
    DoB date NOT NULL,
    DoJ date NOT NULL,
    Sex varchar(1) NOT NULL,
    Prof1 varchar(8),
    Prof2 varchar(8),
    Salary int(4) NOT NULL,
    PRIMARY KEY(Pname)
);

DROP table Studies;
DROP table Programmer;
truncate table  Studies;

create table Software(
    Pname varchar(8) NOT NULL,
	Title varchar(20) NOT NULL,
    dev_in varchar(8) NOT NULL,
    Scost float(7,2),
    Dcost int(5),
    Sold int(3),
    FOREIGN KEY (Pname) REFERENCES Programmer(Pname)
);

create table Studies(
    Pname varchar(8) NOT NULL,
    Splace varchar(9) NOT NULL,
    Course varchar(5) NOT NULL,
    Ccost varchar(5) NOT NULL,
    FOREIGN KEY(Pname) REFERENCES Programmer(Pname) ON DELETE CASCADE
);

select * from Software;
select * from Studies;
select * from Programmer;


delete from Programmer where Pname="Devdutt";
insert into Programmer(Pname,DoB,DoJ,Sex,Prof1,Prof2,Salary)
values("Somdutt",'1966-04-21','1992-04-21',"M","Pascal","Basic",3200);
insert into Programmer(Pname,DoB,DoJ,Sex,Prof1,Prof2,Salary)
values("Devdutt",'1956-05-21','1998-05-21',"M","Pascal","Basic",4000);
insert into Programmer(Pname,DoB,DoJ,Sex,Prof1,Prof2,Salary)
values("Ramya",'1972-05-13','1998-05-13',"F","Cobol","Basic",5000),
("Mary",'1962-07-18','1990-07-18',"M","C","Basic",8000),
("Sam",'1965-10-22','1980-10-22',"M","Cobol","Basic",9000);

delete from Software where Pname="Devdutt";
insert into Software(Pname,Title,dev_in,Scost,Dcost,Sold)
values("Somdutt","Parachutes","Basic",399.95,6000,43);
insert into Software(Pname,Title,dev_in,Scost,Dcost,Sold)
values("Devdutt","Parachutes","Basic",600,80000,43);
insert into Software(Pname,Title,dev_in,Scost,Dcost,Sold)
values("Ramya","Fly","Basic",400,10000,15),
("Mary","Parachutes","Basic",450,15000,50),
("Sam","Real","Basic",350,75000,75);


insert into Studies(Pname,Splace,Course,Ccost) values
("Somdutt","Sabhari","PGDCA",4500);
insert into Studies(Pname,Splace,Course,Ccost) values
("Devdutt","Bdps","DCS",8000),
("Ramya","Sabhari","PGDCA",11000),
("Mary","Sabhari","DCS",20000),
("Sam","Bdps","DS",30000);



SELECT AVG(Software.Scost) AS AverageScost
FROM Software 
JOIN Programmer  ON Software.Pname=Programmer.Pname
WHERE Programmer.Prof1="Pascal";

SELECT Pname,floor(datediff(CURRENT_DATE(), DoB) / 365 )AS Age
from Programmer;

SELECT Programmer.Pname,floor(datediff(CURRENT_DATE(), DoB) / 365 )AS Age
from Programmer
JOIN Studies ON Programmer.Pname=Studies.Pname
where Studies.Course='DCS';

select max(Sold)
from Software;

select Pname,DoB
from Programmer
where month(Dob)=5;

select Ccost
from Studies
order by Ccost
Limit 1;

select count(Programmer.Pname) as Count
From Programmer
join Studies on Programmer.Pname=Studies.Pname
where Studies.Course='PGDCA';

select sum(Dcost) as Revenue
from Software
where Title='Parachutes';

select *
from Software
where Pname='Mary';

select count(Programmer.Pname) as Count
From Programmer
join Studies on Programmer.Pname=Studies.Pname
where Studies.Splace='Sabhari';

select *
from Software
where Dcost>20000;

select max(Dcost) as Costliest
from Software
where dev_in='Basic';

SELECT COUNT(*) AS NumDeveloped
FROM Software
WHERE dev_in = 'Basic';

select COUNT(Programmer.Pname) AS count
from Programmer
Join Studies on Programmer.Pname=Studies.Pname
where Splace='Bdps';

select COUNT(Programmer.Pname) AS count
from Programmer
Join Studies on Programmer.Pname=Studies.Pname
where Ccost between 5000 and 10000;

select avg(Ccost) as Average
from Studies;

select * from Programmer
where Prof1='C';

SELECT COUNT(Pname) AS Count
 FROM Programmer 
 WHERE Prof1 IN ('COBOL' ,'PASCAL');

SELECT COUNT(Pname) AS Programmer 
FROM Programmer 
WHERE PROF1 NOT IN ('C','PASCAL');

select max(floor(datediff(CURRENT_DATE(), DoB) / 365 )) AS Age
from Programmer
where Sex='M';

select avg(floor(datediff(CURRENT_DATE(), DoB) / 365 )) AS Age
from Programmer
where Sex='F';

SELECT Pname, floor(DoJ-(datediff(CURRENT_DATE(), DoB) / 365 )) AS EXPERIENCE
 FROM Programmer 
 ORDER BY Pname DESC;

SELECT Pname
FROM Programmer
WHERE MONTH(DoB) = MONTH(CURRENT_DATE());

SELECT COUNT(*)
FROM Programmer
WHERE Sex = 'F';

Select Prof1
From Programmer
Where sex='M';

select avg(Salary) as Salary
from Programmer;

SELECT COUNT(*)
FROM Programmer
WHERE Salary BETWEEN 2000 AND 4000;

SELECT *
FROM Programmer
WHERE Prof1 NOT IN ('Clipper', 'Cobol', 'Pascal');

SELECT COUNT(*)
FROM Programmer
WHERE Sex = 'F'
AND Prof1 = 'C'
AND floor(DATEDIFF(CURRENT_DATE(), dob) / 365.25 > 24);

SELECT *
FROm Programmer
WHERE DAYOFYEAR(DoB) BETWEEN DAYOFYEAR(CURRENT_DATE()) AND DAYOFYEAR(DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY));

SELECT *
FROM Programmer
WHERE DATEDIFF(CURRENT_DATE(), DoJ) < 365;

SELECT *
FROM Programmer
WHERE DATEDIFF(CURRENT_DATE(), DoJ) >= 730 AND DATEDIFF(CURRENT_DATE(), DoJ) < 1095;

/*SELECT Pname ,(sum(Dcost))-Dcost AS amount_to_be_recovered
FROM Software
WHERE sum(Dcost)<Dcost;*/

SELECT Title  FROM Software WHERE Sold=0;

 SELECT Title, Scost FROM Software WHERE Pname='Mary';
 
SELECT DISTINCT Splace FROM Studies;

SELECT DISTINCT Course FROM Studies;

SELECT Pname FROM Programmer WHERE Pname LIKE "%A%A%";

SELECT Pname FROM Programmer WHERE LENGTH(Pname)=5;

SELECT COUNT(*)
FROM Programmer
WHERE Sex= 'F'
AND Prof1 = 'COBOL'
AND DATEDIFF(CURRENT_DATE(), DoJ) > 730;

SELECT MIN(LENGTH(Pname)) FROM Programmer;
 
 SELECT AVG(Dcost) FROM Software WHERE dev_in='COBOL';
 
 SELECT Pname, SEX , SUBSTR(DoB,1,2)||'/'||SUBSTR(DoB,4,3)||'/'||SUBSTR(DoB,8,2) DoB, SUBSTR(DoJ,1,2)||'/'||SUBSTR(DoJ,4,3)||'/'||SUBSTR(DoJ,8,2) DoJ FROM Programmer;

SELECT Pname FROM Programmer WHERE DAY(LAST_DAY(DoB) )= DAY(DoB) ;

SELECT Salary FROM Programmer WHERE Sex='M' AND (Prof1!='COBOL');


SELECT Title, Scost, Dcost, Dcost -Scost DIFF FROM Software ORDER BY 4 DESC;

SELECT Pname,DoB,DoJ
FROM Programmer
WHERE MONTH(DoB) = MONTH(DoJ);

SELECT Title FROM Software WHERE Title LIKE '% %';

SELECT dev_in LANGUAGE,COUNT(Title) NO_of_PACK FROM Software GROUP BY dev_in;

 SELECT Pname,COUNT(TITLE) No_of_Pack  FROM Software GROUP BY Pname;
 
 SELECT Sex,COUNT(Pname) FROM Programmer GROUP BY Sex;
 
 SELECT dev_in,MAX(Scost),MAX(Sold) FROM Software GROUP BY dev_in;

SELECT YEAR(DoB)AS birth_year, COUNT(*) AS num_people
FROM Programmer
GROUP BY YEAR(DoB)
ORDER BY birth_year;

SELECT YEAR(DoJ)AS join_year, COUNT(*) AS num_people
FROM Programmer
GROUP BY YEAR(DoJ)
ORDER BY join_year;

SELECT MONTH(DoB)AS birth_month, COUNT(*) AS num_people
FROM Programmer
GROUP BY MONTH(DoB)
ORDER BY birth_month;

SELECT MONTH(DoJ)AS join_month, COUNT(*) AS num_people
FROM Programmer
GROUP BY MONTH(DoJ)
ORDER BY join_month;

select Prof1,count(Prof1) from Programmer group by Prof1;

select Prof2,count(Prof2) from Programmer group by Prof2;

SELECT Salary,COUNT(Pname) FROM Programmer GROUP BY Salary;

SELECT Splace,COUNT(Pname) FROM Studies GROUP BY Splace;

SELECT Course ,COUNT(Pname) FROM Studies GROUP BY Course;

SELECT dev_in,sum(Dcost) as Total_Cost from Software GROUP BY dev_in;

SELECT dev_in,sum(Scost) as Total_Cost from Software GROUP BY dev_in;

SELECT Pname,sum(Dcost) as Total_Cost from Software GROUP BY Pname;

SELECT Pname,sum(Scost*Sold) as Total_Cost from Software GROUP BY Pname;

SELECT Pname,COUNT(Title) AS TOTAL_PACK FROM Software GROUP BY Pname;
 
SELECT dev_in, SUM(Scost) FROM Software GROUP BY dev_in;
  
SELECT Pname,MIN(Dcost),MAX(Dcost) FROM Software GROUP BY Pname;

SELECT dev_in,AVG(Dcost),AVG(Scost)FROM Software GROUP BY dev_in;
 
SELECT Splace,COUNT(Course), AVG(Ccost) FROM Studies GROUP BY Splace;

SELECT Splace,COUNT(Pname) FROM Studies GROUP BY Splace;

SELECT Pname,Sex FROM Programmer ORDER BY Sex;

SELECT Pname,TITLE FROM Software ORDER BY Pname;
 
SELECT COUNT(TITLE),dev_in FROM SOFTWARE GROUP BY dev_in;

SELECT COUNT(TITLE),dev_in FROM Software WHERE Dcost<1000 GROUP BY dev_in;

SELECT dev_in,AVG(DCOST - SCOST)as avg FROM SOFTWARE GROUP BY DEV_IN;

SELECT SUM(Scost), SUM(Dcost), SUM(Dcost-(Sold*Scost))FROM Software GROUP BY Pname
HAVING SUM(Dcost)>SUM(Sold*Scost);

SELECT MAX(Salary), MIN(Salary), AVG(Salary) FROM Programmer WHERE Salary > 2000;

SELECT * 
FROM Programmer
WHERE Salary=
       (SELECT MAX(Salary) 
       From Programmer
       WHERE PROF1 LIKE 'C');
       
SELECT * 
FROM Programmer
WHERE Salary=
          (SELECT MAX(Salary) 
          FROM Programmer 
          WHERE (PROF1 LIKE 'COBOL') AND SEX LIKE 'F');

SELECT DISTINCT Pname, Salary, Prof1 
FROM PROGRAMMER 
WHERE (SALARY,PROF1) IN 
         (SELECT MAX(Salary),Prof1 
         FROM PROGRAMMER 
         GROUP BY PROF1);          

SELECT FLOOR((CURRENT_DATE()-DOJ)/365) EXP,Pname FROM PROGRAMMER 
WHERE FLOOR((CURRENT_DATE()-DOJ)/365) = 
        (SELECT MIN(FLOOR((CURRENT_DATE-DOJ)/365)) FROM PROGRAMMER);

SELECT FLOOR((CURRENT_DATE()-DOJ)/365) EXP,Pname,PROF1,PROF2
FROM PROGRAMMER 
WHERE FLOOR((CURRENT_DATE()-DOJ)/365) = 
		(SELECT MAX(FLOOR((CURRENT_DATE()-DOJ)/365)) FROM PROGRAMMER) AND (PROF1 LIKE 'COBOL' );
        

SELECT Prof1 
FROM PROGRAMMER 
GROUP BY Prof1 HAVING Prof1 NOT IN 
       (SELECT Prof2 FROM PROGRAMMER) AND COUNT(Prof1)=1 UNION 
                 SELECT PROF2 FROM PROGRAMMER GROUP BY PROF2 HAVING PROF2 NOT IN 
                          (SELECT PROF1 FROM PROGRAMMER) AND COUNT(PROF2)=1;

SELECT FLOOR((CURRENT_DATE()-DOB)/365) AGE, Pname, PROF1, PROF2 
FROM PROGRAMMER 
WHERE FLOOR((CURRENT_DATE()-DOB)/365) = 
          (SELECT MIN(FLOOR((CURRENT_DATE()-DOB)/365)) FROM PROGRAMMER WHERE PROF1 LIKE 'DBASE');


select splace,count(*) from studies group by splace order by count(*) desc limit 1;

SELECT * 
FROM PROGRAMMER 
WHERE SEX = 'F' AND SALARY >3000 AND (PROF1 NOT IN('C','C++','ORACLE','DBASE') );

SELECT COURSE FROM STUDIES WHERE CCOST = (SELECT MAX(CCOST) FROM STUDIES);

select course, count(*) as num_students from studies group by course order by count(*) desc limit 1;

SELECT SPLACE,COURSE 
FROM STUDIES WHERE CCOST < (SELECT AVG(CCOST) FROM STUDIES);

SELECT SPLACE FROM STUDIES WHERE CCOST = (SELECT MAX(CCOST) FROM STUDIES);

select Splace,max(Ccost) as costliest_course from Studies group by Splace order by costliest_course desc limit 1;

SELECT SPLACE FROM STUDIES WHERE COURSE IN
        (SELECT COURSE FROM STUDIES GROUP BY COURSE HAVING COUNT(Pname) < (SELECT AVG(COUNT(Pname)) FROM STUDIES GROUP BY COURSE));
        
SELECT TITLE,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE);

SELECT TITLE,SCOST FROM SOFTWARE WHERE SCOST = (SELECT MIN(SCOST) FROM SOFTWARE);

SELECT Pname ,SOLD FROM SOFTWARE WHERE SOLD = (SELECT MIN(SOLD) FROM SOFTWARE);

SELECT DEV_IN,SCOST FROM SOFTWARE WHERE SCOST = (SELECT MAX(SCOST) FROM SOFTWARE);

SELECT TITLE FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM SOFTWARE WHERE DEV_IN LIKE 'PASCAL');

SELECT DEV_IN FROM SOFTWARE GROUP BY DEV_IN HAVING MAX(DEV_IN) = (SELECT MAX(DEV_IN) FROM SOFTWARE);


SELECT Pname FROM SOFTWARE GROUP BY Pname HAVING MAX(Pname) = (SELECT MAX(Pname) FROM SOFTWARE);

SELECT Pname,DCOST FROM SOFTWARE WHERE DCOST = (SELECT MAX(DCOST) FROM   SOFTWARE);

SELECT TITLE FROM SOFTWARE WHERE SOLD < (SELECT AVG(SOLD) FROM SOFTWARE);

SELECT Pname FROM PROGRAMMER WHERE SEX = 'F' AND SALARY > (SELECT(MAX(SALARY)) FROM PROGRAMMER WHERE SEX = 'M');

SELECT PROF1 FROM PROGRAMMER GROUP BY PROF1 HAVING PROF1 = (SELECT MAX(PROF1) FROM PROGRAMMER);

SELECT PNAME FROM SOFTWARE WHERE SOLD*SCOST > 2*DCOST;

SELECT PNAME,TITLE FROM SOFTWARE WHERE DCOST IN (SELECT MIN(DCOST) FROM SOFTWARE GROUP BY DEV_IN);

SELECT Pname, DoB
FROM PROGRAMMER
WHERE SEX = 'M' AND YEAR(DoB) = 1965
ORDER BY DoB ASC
LIMIT 1;

SELECT PNAME
FROM PROGRAMMER 
WHERE DOJ=(SELECT (MIN(DOJ)) FROM PROGRAMMER WHERE SEX='F' AND YEAR(DoJ)=1968);

SELECT *
FROM Programmer
wHERE salary IN (
    SELECT salary
    FROM Programmer
    GROUP BY salary
    HAVING COUNT(*) > 1
);

SELECT s.title, p.pname AS developer_name, p.sex, p.salary
FROM software s
JOIN programmer p ON s.pname = p.pname
WHERE p.sex = 'M' AND p.salary > 3000;

select s.* from software s join programmer p on s.pname=p.pname where p.sex='F' and s.dev_in='pascal';

select s.* from software s,studies st,programmer p where s.pname=st.pname and p.pname=s.pname and sex='F' and splace='pragathi';

Select studies.splace, count(software.dev_in), count(software.sold), sum(software.sold*software.scost) from software,studies where software.pname=studies.pname group by studies.splace;

select s.* from programmer p,software s where s.pname =p.pname and (dev_in <> prof1 and dev_in <> prof2);

select s.* from programmer p,software s,studies st where p.pname=s.pname and s.pname=st.pname and sex='M' and splace='sabhari';

select pname from programmer where pname not in(select pname from software);

select sum(scost) from software s,studies st where s.pname=st.pname and splace='apple';

select pname from programmer where prof2 = any(select prof2 from programmer group by prof2 having count(*) >1);

select studies.splace,sum(software.sold*software.scost) from software,studies where studies.pname=software.pname group by studies.splace;

select splace from software st,studies s where s.pname=st.pname group by splace,dcost having max(dcost)=(select max(dcost) from software);

select prof1 from programmer where prof1 not in(select dev_in from software) union select prof2 from programmer where prof2 not in(select dev_in from software);

select p1.salary,s2.course from programmer p1,software s1,studies s2 where p1.pname=s1.pname and s1.pname=s2.pname and scost=(select max(scost) from software);

select p.pname,ceil(ccost/salary) from programmer p,studies s where s.pname=p.pname;

select avg(salary) from programmer p
join software s on p .pname=s.pname where s.sold*s.scost>50000;

