CREATE DATABASE sales;
use sales;

create table employees (
	employee_id int primary key auto_increment,
    last_name varchar(20),
    first_name varchar(10),
    birth_date date,
    supervisor_id int
    
);

create table customers(
	customer_id int primary key auto_increment,
    customer_name varchar(255),
    contact_name varchar(255),
    address varchar(255),
    city varchar(255),
    postal_code varchar(10),
    country varchar(50)
);

create table orders(
	order_id int primary key auto_increment,
    order_date datetime default current_timestamp,
    customer_id int,
    employee_id int,
    foreign key (customer_id) references customers(customer_id),
    foreign key (employee_id) references employees(employee_id)
);

Insert into customers (customer_name, contact_name, address, city, postal_code, country) 
 values ('Trần Bình', 'Trọng', 'Quận 8', 'HCM', 70000, 'VN'), 
 ('Tran Bao', 'An', 'Bình Thạnh', 'HCM', 70000, 'VN'), 
 ('Tasty', 'Finn', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
 
 #select
#1.1    
select * from customers;
#1.2
select distinct country from customers;
#1.3
select * 
from customers
where country = 'VN';
#1.4
select country, count(customer_id)
from customers
group by country;
#1.5
select country, count(customer_id) num
from customers
group by country
having num >=2;

###Join
update orders set customer_id = 2 where order_id = 1;
#1.1
select order_id, customers.customer_id, customer_name 
from customers INNER JOIN orders 
on customers.customer_id = orders.customer_id;
#1.2
select customers.customer_id, customer_name, order_id 
from customers LEFT JOIN orders 
on orders.customer_id = customers.customer_id;
#1.3
SELECT a.employee_id ,CONCAT(a.last_name,' ', a.first_name) as 'Employee Name' 
,b.employee_id AS 'Supervisor ID' 
,CONCAT(b.last_name,' ', b.first_name) AS 'Supervisor Name' 
FROM employees a inner join employees b 
on a.supervisor_id = b.employee_id; 
#1.4
SELECT A.customer_id, A.customer_name, A.country 
FROM customers A inner join customers B 
on A.customer_id <> B.customer_id 
Where A.country = B.country;
#1.5
select 
order_id, customer_name, 
CONCAT(first_name, ' ', last_name) EmployeeName, 
order_date 
from employees E INNER join orders O 
on E.employee_id = O.employee_id 
INNER JOIN customers C 
on C.customer_id = O.customer_id

#