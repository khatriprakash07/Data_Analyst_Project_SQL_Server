<<<<<<< HEAD
drop view if exists customer_segmentation

with get_customer_revenue as (
select 
ModelName,
CustomerKey,
sum(TotalRevenue) as netrevenue 
from client_revenue
group by ModelName,
CustomerKey
), customer_segment as (

select 
PERCENTILE_CONT(0.25) within group (order by netrevenue) over(partition by Modelname) as '25_percentile',
PERCENTILE_CONT(0.75) within group (order by netrevenue) over(partition by Modelname) as '75_percentile',
*
from get_customer_revenue
),
segment_summary as (
select 
case when netrevenue <[25_percentile] then '1- Low Value Client'
when netrevenue <=[75_percentile] then '2- Medium Value Client'
else '3- High Value Client' end as customer_segment,
*
from customer_segment
)
select customer_segment,sum(netrevenue) as netrevenue
into customer_segmentation
from segment_summary
group by customer_segment

=======
drop view if exists customer_segmentation

with get_customer_revenue as (
select 
ModelName,
CustomerKey,
sum(TotalRevenue) as netrevenue 
from client_revenue
group by ModelName,
CustomerKey
), customer_segment as (

select 
PERCENTILE_CONT(0.25) within group (order by netrevenue) over(partition by Modelname) as '25_percentile',
PERCENTILE_CONT(0.75) within group (order by netrevenue) over(partition by Modelname) as '75_percentile',
*
from get_customer_revenue
),
segment_summary as (
select 
case when netrevenue <[25_percentile] then '1- Low Value Client'
when netrevenue <=[75_percentile] then '2- Medium Value Client'
else '3- High Value Client' end as customer_segment,
*
from customer_segment
)
select customer_segment,sum(netrevenue) as netrevenue
into customer_segmentation
from segment_summary
group by customer_segment

>>>>>>> 1a8b57ae6218eb029a0edbe417361aa4cd6551c0
select * from customer_segmentation