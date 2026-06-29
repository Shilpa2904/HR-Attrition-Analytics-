create database hr_analytics;
use hr_analytics;
show tables;
select count(*)as Total_employees from ibm;
select round(
sum(case when attrition='yes' then 1 else 0 end )*100.0/count(*),2)as attrition_rate from ibm;
select department,count(*)as employees,sum(case when attrition='yes'then 1 else 0 end)as attrition_count from ibm group by department;
select attrition,round(avg(monthlyincome),2)as avg_income from ibm group by Attrition;
select worklifebalance,count(*)as employees,sum(case when attrition='yes' then 1 else 0 end)as attirition_count from ibm group by WorkLifeBalance;
select attrition,round(avg(yearsAtcompany),2)as avg_years from ibm group by Attrition;

