Select to_char(hire_date,'mmyyyy')  from employees ; 
Select  to_char(hire_date,'dd/mm/yyyy')  from employees ; 
Select  to_date('17/06/2003','dd.mm.yyyy') from  dual ;

Select  to_date(to_char(hire_date,'dd/mm/yyyy'),'dd.mm.yyyy')  
from employees ; 

17-jan-2001 
Select  to_char(hire_date,'dd/MON/yyyy')  from employees ; 

Select concat(last_name,first_name)  from employees ;

Select concat(first_name || ' ', last_name) from HR.employees;
Select concat(concat(first_name,' '),last_name) from HR.employees;
Select upper('az?rbaycan'),lower('AZERBYCAN') from  dual ; 

sELECT *  FROM  HR.employees  WHERE trim(lower(first_name))   like '%at%';

Select  'A' || trim(' B' || 'C ') || 'D' from  dual ;
Select  'A' || rtrim(' B' || 'C ') || 'D' from  dual ;

Select initcap('az?rbaycan baki')  from  dual  ;
Select initcap(lower(first_name) || ' ' || lower(last_name) ) 
from  HR.employees  ;

Select replace (first_name,'a','A')  from   HR.employees  ;

****bahruz

Select rpad(first_name,20,'*'),lpad(first_name,20,'*')  
from  HR.employees  ; 

Select length(first_name)  from   HR.employees ;

Select length(first_name)  from   HR.employees ;

Select  substr('Az?rbaycan',8,3),
substr('Az?rbaycan',-3,3) from  dual ; 

employees cedvelindeki  ad ve soyadlarin  ilk  ve son  
herfi qalmaq  serti ile
yerde qalan  herfleri  *  ile  gosterin ;

Select substr(first_name,1,1)||'******'||substr(first_name,-1,1)
from Hr.employees;
bahruz  6-2=4
b****z
 Select substr(first_name,1,1)||rpad('*',
 LENGTH(first_name)-2,'*')||substr(first_name,-1,1)
from Hr.employees;

Select (substr(first_name,1,1)||rpad('*',LENGTH(first_name)-2,'*')||substr(first_name,-1,1))|| '  '|| (substr(last_name,1,1)||rpad('*',LENGTH(last_name)-2,'*')||substr(last_name,-1,1))
from Hr.employees;

Select rpad(substr(first_name,1,1),LENGTH(first_name)-1,'*')
||substr(first_name,-1,1)
from Hr.employees;

Select  first_name,decode(substr(first_name,1,1),
'A','A-dir','B','B-dir','Deyil') 
from Hr.employees;


Select  decode(substr(first_name,1,1),
'A',first_name,'B',first_name,'Deyil') 
from Hr.employees;

Select nvl(COMMISSION_PCT,9999)  from Hr.employees;

case
when  sert  then netice
when  sert  then netice
when  sert  then netice
else 
end  ;
Select  first_name,
case 
 when  salary between  3000 and  5000  then salary*1.3
 when  salary between  5000 and  10000  then salary*1.1
 else  salary 
 end  artmis_maas  ,salary  from  hr.employees ;
 
 
 Select  
 first_name , to_char(hire_date,'dd-MON-yy'),
 case
when to_char(hire_date, 'MON') in ('dec', 'jan', 'feb') then 'winter'
when to_char(hire_date, 'MON') in ('mart', 'apr', 'may') then 'spring'
when to_char(hire_date, 'MON') in ('Jun', 'JUL', 'Aug') then 'summer'
else 'autumn'
end seasons
from   hr.employees;

 
 Iscilerin  qarsisinda  onlarin  ise qebul olduqlari  fesilleri  yazmaq  lazimdir
 first_name,last_name, season 
 
Select  
extract(month  from  hire_date ),
extract(year  from  hire_date ),
extract(day  from  hire_date )
from hr.employees; 
 
 Select  months_between (sysdate ,hire_date)  from  hr.employees;
 Select  hire_date,add_months(hire_date,3)  from hr.employees;
 Select  emp.*,add_months(hire_date,3)  from hr.employees emp;

Select  first_name,last_name,emp.department_id  
from hr.employees emp, departments  dep where  
dep.department_ýd=emp.department_id

Select  first_name,last_name,employees.department_id  
from hr.employees , departments   where  
 hr.employees.department_ýd=departments.department_id