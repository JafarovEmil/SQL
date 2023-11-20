select first_name,substr(first_name,2,1),substr(first_name,-1,1),
substr(replace(first_name,substr(first_name,2,1),substr(first_name,-1,1)),1,length(first_name)-1) || substr(first_name,2,1)
from hr.employees;

Select first_name,substr(first_name,1,1)||substr(first_name,-1,1)||substr(first_name,3,(length(first_name)-3))||substr(first_name,2,1) 
from HR.employees order by first_name asc;

Select *  from  hr.employees  emp  ,  HR.departments  dep  where emp.department_id=dep.department_id 

Select *  from  
hr.employees  emp  inner join   
HR.departments  dep on emp.department_id=dep.department_id left join  
hr.locations  loc on  loc.location_id=dep.location_id 

Select dep.department_name,loc.location_id,dep.location_id  from HR.departments  dep 
left join  hr.locations  loc on  loc.location_id=dep.location_id  and  dep.department_id <100

Select dep.department_name,loc.location_id,dep.location_id  from HR.departments  dep 
left join  hr.locations  loc on  loc.location_id=dep.location_id  
where  dep.department_id <100 ;

Select dep.department_name,loc.location_id,dep.location_id  from HR.departments  dep 
right join  hr.locations  loc on  loc.location_id=dep.location_id 

inner join 
A-A
B-B
C-C
D-D

Left 
A-A
B-null
C-C
D-null

rigth 
A-A
Null-B
C-C
null-D

full join
A-Null
Null-B
C-null
Null-D
Z-Z
T-T


Select *  from   hr.locations
inner join  
left join 
right join 
full join
cross join 

Iscilerin adlari  ve  qarsisinda  onalrin managerlerinin  adlari

Select emp1.first_name , emp1.last_name, emp2.last_name Manager_name  
from  hr.employees emp1 inner join hr.employees emp2   on emp1.manager_id=emp2.employee_id;


Select * from  hr.employees emp where emp.department_id=100 
union
Select * from  hr.employees emp where emp.department_id=90 ;


Select first_name as  adimiz, last_name as  soyadimiz,hire_date from  hr.employees emp where emp.department_id in (100,90) 
union 
Select first_name as  adi, last_name as  soyadi,null from  hr.employees emp where emp.department_id=90 ;

Select first_name as  adimiz, last_name as  soyadimiz,hire_date from  hr.employees emp where emp.department_id in (100,90) 
intersect 
Select first_name as  adi, last_name as  soyadi,hire_date from  hr.employees emp where emp.department_id=90 ;

Select first_name as  adimiz, last_name as  soyadimiz,hire_date from  hr.employees emp where emp.department_id in (100,90) 
minus
Select first_name as  adi, last_name as  soyadi,hire_date from  hr.employees emp where emp.department_id=90 ;


A
1
2
3

B
1
2
4
5
6

union 
123456

union 
12312456

intersect
12 

minus
3


Select * from    hr.locations loc 


 Select  *  from (Select dep.department_name,loc.COUNTRY_ID ,dep.location_id  from HR.departments  dep 
left join  hr.locations  loc on  loc.location_id=dep.location_id ) subq where subq.COUNTRY_ID='US' ;

Select emp.first_name,salary ,depsal.msal dep_max_salary  from hr.employees  emp  inner  join 
(Select  department_id,max(salary) msal from  hr.employees  group  by department_id ) depsal 
on  emp.department_id=depsal.department_id ;

Select emp.first_name,salary ,
(Select  max(salary) from hr.employees  emp2 where emp2.department_id=emp.department_id  ) dep_max_sa
from hr.employees  emp ;



