use coffee_store;

Create table products(

id integer identity(1,1) primary key,
name Varchar(30),
price float
);

Create table customers(

id integer identity(1,1) primary key,
first_name Varchar(30),
last_name Varchar(30),
gender Varchar(10) Check(gender in ('M', 'F')),
price float,
phone_number Varchar(10)
);


SELECT 
    *
FROM
    information_schema.tables; 
/*show the tables*, in MySQL you can write "Show Tables"*/
 
 /*inserting Values , Modifying dataType and updating*/
 

Alter table products
alter column name varchar(40);
Alter table products
alter column price Integer;

Insert Into products (name, price )
VALUES ('Espresso', 2.50  );


Insert Into products (name, price )
VALUES ('Macchiato', 3.00  ), ('cappuccino', 3.50); 

UPDATE products SET price=250.0
Where id=1;

Update products
set name='Macchiato Reg' , price= 300
where id=2
;

update products 
set name='Cappuccino', price= 350
where id=3;

SELECT * FROM products;