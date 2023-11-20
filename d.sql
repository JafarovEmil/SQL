Select  
extract(year  from  hire_date)  ,
extract(Month  from  hire_date)  ,
extract(day  from  hire_date)  
from  employees 
where  extract(year  from  hire_date) between  2003 and  2006;

Select  max(salary),min(salary),avg(salary) 
,count(salary),count(*),count(nvl(manager_id,1)) ,sum(salary*1.3)
from  employees ;

Select sum(salary),department_id,job_id from  employees  
group  by  department_id,job_id; 

select min(salary), max(salary), avg(salary)
from hr.employees where 
extract(year from  sysdate) - extract(year  from  hire_date)=15
  group by job_id;
 
Select to_char(sysdate,'yyyy'),to_char(hire_date,'yyyy') from hr.employees;


Select  max(salary),min(salary),department_id   
from hr.employees aa where aa.commýssýon_pct is not null  
having max(salary)-min(salary)>5000 
group  by  department_id  ;


count-dan ve her hansi bir filterden  istifade etmeden  90 nomreli departamentdeki
iscilerin sayini  tapin. 

Select  sum(case  when  department_id=90 then 1 else 0 end ) cnt 
from   hr.employees;

Select  to_number(123.444,'99G999D999')from  dual ;

 Select  instr('azerbaycan','a',2,2) from  dual ;
 
 Select manager_id,nullif(manager_id,100)  from  employees;
 Select  to_number(to_char(salary))   from  employees;
 