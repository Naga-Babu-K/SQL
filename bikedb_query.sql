select soitm.order_id,
scus.city,
scus.state,
so.order_date,
soitm.quantity as unit_sold,
pprd.product_name,
pcat.category_name,
sst.store_name
from production.brands as pb,
production.categories as pcat,
production.products as pprd,
production.stocks as pstk,
sales.customers as scus,
sales.order_items as soitm,
sales.orders as so,
sales.staffs as ss,
sales.stores as sst,
(select * from(select  first_name, last_name, concat(first_name, ' ',last_name) as staff_ref from staffs) as new_staff) staff_ref
where 1 = 1
and pcat.category_id = pprd.category_id
and pprd.brand_id = pb.brand_id
and pprd.product_id = soitm.product_id
and scus.customer_id = so.customer_id
and so.order_id = soitm.order_id
and ss.staff_id = so.staff_id
and sst.store_id = pstk.store_id
and sst.store_id = so.store_id
and sst.store_id = ss.store_id;


/* (select * from
(select  first_name, last_name, concat(first_name, ' ',last_name) as staff_ref
from staffs) as new_staff);

select * from staffs;




use production;
use sales;
select * from customers;

select first_name, last_name, (first_name,' ', last_name) as ref from customers;

select order_items.order_id, 
customers.customer_id, 
customers.first_name, 
customers.last_name, 
customers.city, 
customers.state
 from customers
 order_items;
 
 
 select * from orders;
 order by customer_id;
 
 ######################################################################################################################################### */
use sales;
use production;
 
 select so.id
 from sales.orders as so;
 
 
