#Lab2

create database BikeStores;
use BikeStores;

create table customers (
	customer_id int primary key auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    phone varchar(25),
    email varchar(255),
    street varchar(255),
    city varchar(50),
    state varchar(25),
    zip_code varchar(5)
);

create table stores(
	store_id int primary key auto_increment,
    store_name varchar(255),
    phone varchar(25),
    email varchar(255),
    street varchar(255),
    city varchar(255),
    state varchar(10),
    zip_code varchar(5)
);

create table brands(
	brand_id int primary key auto_increment,
    brand_name varchar(255)
);

create table categories(
	category_id int primary key auto_increment,
    category_name varchar(255)
);

create table products(
	product_id int primary key auto_increment,
    product_name varchar(255),
    brand_id int,
    category_id int,
    model_year smallint,
    list_price decimal(10,2),
    foreign key (brand_id) references brands(brand_id),
    foreign key (category_id) references categories(category_id)
);

create table stocks(
	store_id int ,
    product_id int,
    quantity int,
    primary key(store_id,product_id),
    foreign key (store_id) references stores(store_id),
    foreign key (product_id) references products(product_id)
);

create table staffs(
	staff_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(255),
	phone varchar(25),
    `active` tinyint,
    store_id int,
    manager_id int,
    foreign key (store_id) references stores(store_id),
    foreign key (manager_id) references staffs(staff_id)
    
);

create table orders(
	order_id int primary key auto_increment,
    order_status tinyint,
    order_date date,
    required_date date,
    shipped_date date,
    store_id int,
    staff_id int,
    customer_id int,
    foreign key (store_id) references stores(store_id),
    foreign key (staff_id) references staffs(staff_id),
    foreign key (customer_id) references customers(customer_id)
);

create table order_items(
	item_id int ,
    list_price decimal(10,2),
    discount decimal(4,2),
    quantity int,
    product_id int,
    order_id int,
    primary key(item_id, order_id),
    foreign key (product_id) references products(product_id),
    foreign key (order_id) references orders(order_id)
);

#Lab3

insert into brands( brand_name) values ('Electra');
insert into brands( brand_name) values ('Haro');
insert into brands( brand_name) values ('Heller');
insert into brands( brand_name) values ('Pure Cycles');
insert into brands( brand_name) values ('Ritchey');
insert into brands( brand_name) values ('Strider');
insert into brands( brand_name) values ('Sun Bicycles');
insert into brands( brand_name) values ('Surly');
insert into brands( brand_name) values ('Trek');

insert into categories(category_name) values ('Children Bicycles');
insert into categories(category_name) values ('Comfort Bicycles');
insert into categories(category_name) values ('Cruisers Bicycles');
insert into categories(category_name) values ('Cyclocross Bicycles');
insert into categories(category_name) values ('Electric Bikes');
insert into categories(category_name) values ('Mountain Bikes');
insert into categories(category_name) values ('Road Bikes');

INSERT INTO products 
VALUES 
    (NULL, 'Trek 820 - 2016', 9, 6, 2016, 379.99),
    (NULL, 'Ritchey Timberwolf Frameset - 2016', 5, 6, 2016, 749.99),
    (NULL, 'Surly Wednesday Frameset - 2016', 8, 6, 2016, 999.99),
    (NULL, 'Trek Fuel EX 8 29 - 2016', 9, 6, 2016, 2899.99),
    (NULL, 'Heller Shagamaw Frame - 2016', 3, 6, 2016, 1320.99),
    (NULL, 'Surly Ice Cream Truck Frameset - 2016', 8, 6, 2016, 469.99),
    (NULL, 'Trek Slash 8 27.5 - 2016', 9, 6, 2016, 3999.99),
    (NULL, 'Trek Remedy 29 Carbon Frameset - 2016', 9, 6, 2016, 1799.99),
    (NULL, 'Trek Conduit+ - 2016', 9, 5, 2016, 2999.99),
    (NULL, 'Surly Straggler - 2016', 8, 4, 2016, 1549.00);
    
INSERT INTO customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
VALUES 
    (NULL, 'Debra', 'Burks', NULL, 'debra.burks@yahoo.com', '9273 Thorne Ave.', 'Orchard Park', 'NY', '14127'),
    (NULL, 'Kasha', 'Todd', NULL, 'kasha.todd@yahoo.com', '910 Vine Street', 'Campbell', 'CA', '95008'),
    (NULL, 'Tameka', 'Fisher', NULL, 'tameka.fisher@aol.com', '769C Honey Creek St.', 'Redondo Beach', 'CA', '90278'),
    (NULL, 'Daryl', 'Spence', NULL, 'daryl.spence@aol.com', '988 Pearl Lane', 'Uniondale', 'NY', '11553'),
    (NULL, 'Charolette', 'Rice', '(916) 381-6003', 'charolette.rice@msn.com', '107 River Dr.', 'Sacramento', 'CA', '95820');

INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES 
    (NULL, 'Santa Cruz Bikes', '(831) 476-4321', 'santacruz@bikes.shop', '3700 Portola Drive', 'Santa Cruz', 'CA', '95060'),
    (NULL, 'Baldwin Bikes', '(516) 379-8888', 'baldwin@bikes.shop', '4200 Chestnut Lane', 'Baldwin', 'NY', '11432'),
    (NULL, 'Rowlett Bikes', '(972) 530-5555', 'rowlett@bikes.shop', '8000 Fairway Avenue', 'Rowlett', 'TX', '75088');

INSERT INTO stocks 
VALUES 
    (1, 1, 27),
    (1, 2, 5),
    (1, 3, 6),
    (1, 4, 23),
    (1, 5, 22),
    (1, 6, 0),
    (1, 7, 8),
    (1, 8, 0),
    (1, 9, 11),
    (1, 10, 15);
    
INSERT INTO staffs 
VALUES 
    (NULL, 'Fabiola', 'Jackson', 'fabiola.jackson@bikes.shop', '(831) 555-5554', 1, 1, NULL),
    (NULL, 'Mireya', 'Copeland', 'mireya.copeland@bikes.shop', '(831) 555-5555', 1, 1, 1),
    (NULL, 'Genna', 'Serrano', 'genna.serrano@bikes.shop', '(831) 555-5556', 1, 2, 2),
    (NULL, 'Virgie', 'Wiggins', 'virgie.wiggins@bikes.shop', '(831) 555-5557', 1, 1, 2),
    (NULL, 'Jannette', 'David', 'jannette.david@bikes.shop', '(516) 379-4444', 1, 2, 1);

INSERT INTO orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES 
    (NULL, 1, 4, '2016-01-01', '2016-01-03', '2016-01-03', 1, 2),
    (NULL, 2, 4, '2016-01-01', '2016-01-04', '2016-01-03', 2, 5),
    (NULL, 3, 4, '2016-01-02', '2016-01-05', '2016-01-03', 2, 5),
    (NULL, 4, 4, '2016-01-03', '2016-01-04', '2016-01-05', 1, 3),
    (NULL, 5, 4, '2016-01-03', '2016-01-06', '2016-01-06', 2, 4);
    
INSERT INTO order_items (order_id, item_id, product_id, quantity, list_price, discount)
VALUES 
    (1, 1, 10, 1, 599.99, 0.20),
    (1, 2, 8, 2, 1799.99, 0.07),
    (1, 3, 10, 2, 1549.00, 0.05),
    (1, 4, 10, 2, 599.99, 0.05),
    (1, 5, 4, 1, 2899.99, 0.20),
    (2, 1, 10, 1, 599.99, 0.07),
    (2, 2, 10, 2, 599.99, 0.05),
    (3, 1, 3, 1, 999.99, 0.05),
    (3, 2, 10, 1, 599.99, 0.05),
    (4, 1, 2, 2, 749.99, 0.10);

#2.1
select first_name, last_name, email
from customers;
#2.2
select *
from customers
where state = 'CA';
#2.3
select *
from customers
order by first_name;
#2.4
select city, count(customer_id) customer_count
from customers
where state = 'CA'
group by city;
#2.5
select city
from customers
where state = 'CA'
group by city
having count(customer_id) > 10;
#2.6
select product_name , model_year
from products
where list_price between 1000 and 2000;
#2.7
select first_name, email
from staffs
where `active` = '1' ;


#2.8
select product_name , brand_id
from products
where list_price > 1000 and model_year = 2016;
#2.9
select order_id, customer_id
from orders
where shipped_date is not null;
#2.10
select product_id, list_price, quantity
from order_items
where discount > 0 and quantity = 2;

create table test(
test_id int primary key,
num varchar(255)
)

