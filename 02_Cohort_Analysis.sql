-Cohort Analysis (On the basis of Totalrevenue)
drop table if exists cohort_analysis;
with cohort_year as (
select  
distinct 
year(min(orderdate) over(partition by customerkey)) as cohort_year ,
customerkey
from sales 
)
select 
cy.cohort_year,
year(cr.orderdate) as Purchase_Year,
sum(cr.TotalRevenue) as Totalrevenue
into cohort_analysis
from client_revenue as cr
left join cohort_year as cy 
on cr.CustomerKey = cy.CustomerKey
group by year(cr.orderdate), cy.cohort_year
