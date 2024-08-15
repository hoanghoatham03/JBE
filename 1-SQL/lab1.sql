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
#1.1    
select * from customers
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
having num >=2

select * from customers order by customer_name

