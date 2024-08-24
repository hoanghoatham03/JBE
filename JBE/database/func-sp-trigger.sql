create database sms;
use sms;

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);

CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    list_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATETIME NOT NULL,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE LineItem (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

## FUNC, SP, TRIGGER
INSERT INTO Customer (customer_name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Robert Brown'),
('Emily Davis');

INSERT INTO Employee (employee_name, salary, supervisor_id) VALUES
('Michael Scott', 5000.00, NULL),
('Dwight Schrute', 4000.00, 1),
('Jim Halpert', 4500.00, 1),
('Pam Beesly', 3500.00, 1),
('Angela Martin', 3600.00, 2);

INSERT INTO Product (product_name, list_price) VALUES
('Laptop', 1200.00),
('Smartphone', 800.00),
('Tablet', 600.00),
('Monitor', 300.00),
('Keyboard', 50.00);

INSERT INTO Orders (order_date, customer_id, employee_id, total) VALUES
('2024-08-01 10:00:00', 1, 1, 2000.00),
('2024-08-02 11:30:00', 2, 2, 1300.00),
('2024-08-03 12:45:00', 3, 3, 900.00),
('2024-08-04 14:20:00', 4, 4, 300.00),
('2024-08-05 16:05:00', 5, 5, 50.00);

INSERT INTO LineItem (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1200.00),
(1, 2, 1, 800.00),
(2, 1, 1, 1200.00),
(2, 4, 1, 100.00),
(3, 2, 1, 800.00),
(3, 5, 2, 50.00),
(4, 4, 1, 300.00),
(5, 5, 1, 50.00);

#1
SELECT Customer.customer_id, Customer.customer_name
FROM Customer
INNER JOIN Orders ON Customer.customer_id = Orders.customer_id;

#2
select order_id, order_date,  customer_id, employee_id, total
from orders 
where customer_id = 1;

#3
select * 
from lineitem
where order_id = 1;

#4
DROP function IF EXISTS order_total_byID;
delimiter //
create function order_total_byID (order_id int)
returns decimal
READS SQL DATA
begin 
	declare total decimal;
    select sum(price*quantity) into total
    from lineitem l
    where l.order_id = order_id;
    return total;
end//
DELIMITER ;
select order_total_byID(2);

#5
DROP procedure IF EXISTS insert_customer_sp;
delimiter //
create procedure insert_customer_sp (in customer_name VARCHAR(255))
begin
	insert into customer (customer_name) values (customer_name);
end//
delimiter ;

call insert_customer_sp('hoang hoa tham');

#6 add transaction
DROP PROCEDURE IF EXISTS del_customer_sp;
DELIMITER //

CREATE PROCEDURE del_customer_sp (IN customer_id INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK; 
    END;
    
    START TRANSACTION;

    DELETE l
    FROM lineitem l
    INNER JOIN orders o ON l.order_id = o.order_id
    WHERE o.customer_id = customer_id;

    DELETE FROM orders o
    WHERE o.customer_id = customer_id;
    
    DELETE FROM customer c
    WHERE c.customer_id = customer_id;
    
    COMMIT;

END//
DELIMITER ;

call del_customer_sp(5);

#7
DROP procedure IF EXISTS update_customer_sp;
delimiter //
create procedure update_customer_sp (in customer_id INT, in customer_name varchar(255))
begin
	update customer c  set c.customer_name = customer_name
    where c.customer_id = customer_id;
end//
delimiter ;

call update_customer_sp(6, 'nguyen the hung');
#8
INSERT INTO Orders (order_date, customer_id, employee_id, total) VALUES 
('2024-08-08 10:00:00', 3, 3, 3000.00);

#9
INSERT INTO LineItem (order_id, product_id, quantity, price) VALUES
(3, 3, 1, 1200.00);

#10
update orders set total = 10000 
where order_id = 6;

