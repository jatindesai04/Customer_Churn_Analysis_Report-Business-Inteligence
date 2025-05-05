select * from stg_Churn 



select  gender, count(gender) as gender_count
, count(gender) * 100.0 / (select count(*) from stg_Churn) as percentage 
from stg_Churn 
group by gender


select  contract, count(contract) as contract_count
, count(contract) * 100.0 / (select count(*) from stg_Churn) as percentage 
from stg_Churn 
group by contract


-- imp query 
-- CUSTOMER --> CHURNED __ STAYED __ JOINED

select  Customer_Status, count(Customer_Status) as total_count , sum(Total_Revenue) as tot_rev
, sum(Total_Revenue) * 100.0 / (select sum(Total_Revenue) from stg_Churn) as Total_rev_percentage 
from stg_Churn 
group by Customer_Status


select state, count(state) as state_count ,
( count(state) * 100.0 / (select count(state) from stg_Churn  )) as percentage
from stg_Churn
group by state 
order by percentage desc

-- 1....shift + down         2.. alt + x to execute 


select Distinct Internet_Type from stg_Churn

-- step 1. remove null 













