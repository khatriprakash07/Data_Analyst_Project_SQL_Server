-- Churn Rate

select * from client_revenue


with getlastpurchase as (
select *,
ROW_NUMBER() over(partition by customerkey order by cast(orderdate as date)desc) as rn
from client_revenue
)
select *,
case 
when orderdate < DATEADD(month,-6,'2017-06-30')
then 'Churn'
else 'Active'
end as Customer_status 
into churndata
from getlastpurchase 
where rn = 1
