# Teresa Surlis

use ElegantBites;
select *
from Customer;

# Query 1
select supplier_name, count(product_id) 
from Supplier s inner join Product p on
	s.Supplier_id=p.Supplier_id
group by supplier_name
order by 2 desc;

# Query 2
select distinct country
from Customer
order by 1;

# Query 3
select p.product_id, product_name, count(order_id)
from Product p left join OrderDetail o on
	p.product_id=o.product_id
group by product_id, product_name
having count(order_id) like 0;

# Query 4 
select c.customer_id, customer_name, count(order_id)
from Customer c left join Orders o on
	c.customer_id=o.customer_id
group by customer_id, customer_name
having count(order_id) like 0
order by customer_name;

# Query 5
select p.product_id, product_name, quantity*price as sales
from Product p inner join OrderDetail d on
	p.product_id=d.product_id
where quantity*price > 10000;

# Query 6
select distinct city
from Customer
where city like "%x%"
order by city;

# Query 7
select product_name
from Product p left join Supplier s on
	p.supplier_id=s.supplier_id
where p.supplier_id is null;

# Query 8
select customer_name
from Customer
where customer_name like "v%"
order by 1;

# Query 9
select category_Name, avg(price) as average
from Product p inner join Category c on
	p.category_id=c.category_id
group by category_Name
having avg(price) > 30
order by avg(price) desc;

# Query 10
select category_Name, quantity*price as sales
from Category c inner join Product p on
	c.category_id=p.category_id inner join OrderDetail o on
	p.product_id=o.product_id
group by category_name, quantity*price
order by quantity*price;