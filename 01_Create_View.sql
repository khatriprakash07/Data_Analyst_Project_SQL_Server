drop view client_revenue;
create view client_revenue as 
select  
cast(sum((s.OrderQuantity*p.productprice) - (s.OrderQuantity*p.ProductCost)) as decimal(19,2)) as 'TotalRevenue',
productname,
p.ProductKey,
s.CustomerKey,
s.OrderDate,
p.ModelName
from sales as s
left join products as p 
on s.productkey = p.productkey
GROUP BY productname,s.CustomerKey,s.OrderDate,
p.ModelName,p.ProductKey;

select * from client_revenue

create index indx_productname on products (productkey) -- clustered index
CREATE NONCLUSTERED INDEX indx_sales ON sales (productkey); -- Nonclustered index