Select *  from HR.employees_2 ;

truncate table HR.employees_2 ; 

create  table  hr.emp_copy  as (
Select *  from hr.employees  
);

CREATE TABLE hr.Persons
(
P_Id INT NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);


CREATE TABLE hr.regions(
region_id NUMBER
CONSTRAINT region_id_nn NOT NULL,
CONSTRAINT reg_id_pk PRIMARY KEY (region_id) ,
region_name VARCHAR2(25)
);



CREATE TABLE hr.Personaa (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int CHECK (Age>=18)
);

create or replace view  hr.emp_v  as  ( 
Select emp.first_name, emp.last_name , dep.department_name  from hr.employees  emp  inner  join  hr.departments dep  on 
emp.department_id=dep.department_id );


Select  *  from hr.emp_v ;

Select *  from  hr.Personaa ;
commit;

insert into  hr.Personaa  (id,LastName,FirstName,Age) 
values  (2,'Bahruzzzzzz','Qasimov',32) ;

insert into  hr.Personaa  
        (id,LastName,Age) 
values  (2,'Bahruzzzzzz2',32) ;

insert into  hr.Personaa  
values  (3,'Bahruzzzzzz2',32) ;


Select *  from  HR.emp_copy ;

truncate  table HR.emp_copy ;

insert  into  HR.emp_copy  (select  *  from  hr.employees  emp  );

Select *  from   hr.Personaa ;

truncate  table  HR.emp_copy ;

update  HR.emp_copy  set salary =salary*1.3, first_name=upper(first_name)  
where  salary <5000;



Delete  from HR.emp_copy    where  salary>10000 ;

Delete  from HR.emp_copy ;

1)  employees  cedvelinin  kopyasinin  yaradin 
2)yaradilmis  cedveldeki  maaslari  iscinin  departamentindeki max maasinin 
1 %-i   qeder artirin ;

A 1
A 1
B 2
C 3
D 4

A 1
A 1
B 3
C 4
D 5



SELECT
department_id, last_name, salary,
DENSE_RANK()
OVER (PARTITION BY department_id
ORDER BY salary)
DENSE_RANK FROM hr.employees

ORDER BY DENSE_RANK, last_name;



SELECT
department_id, last_name, salary,
RANK()
OVER (PARTITION BY department_id
ORDER BY salary)
RANK FROM hr.employees
WHERE department_id = 60
ORDER BY RANK, last_name;



SELECT
department_id, last_name, salary,
FIRST_VALUE (last_name)
OVER (PARTITION BY department_id ORDER BY salary) AS lowest_sal
FROM hr.employees ;

SELECT
last_name, salary, hire_date,
LAST_VALUE(hire_date)
OVER (PARTITION BY department_id ORDER BY salary) higst_hire_date
FROM hr.employees ;


SELECT
last_name, hire_date, salary,
LAG(salary, 2, 0)
OVER (ORDER BY hire_date)
FROM hr.employees
WHERE job_id = 'PU_CLERK';

SELECT hire_date, last_name,
LEAD(hire_date, 2,sysdate)
OVER (ORDER BY hire_date) AS "NextHired"
FROM hr.employees
WHERE department_id = 30;


Select  add_months(sysdate,level) ayin_sonu  from  dual  connect  by  level <11

