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
    

