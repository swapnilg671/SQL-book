# SQL 
SQL - Structured query language, set of command used to interact with database 
MySQL or MSSQL- Software that are used to manage the database and its operation.

MySQL is service by Oracle and MSSQL server is the service by Microsoft.
altough, commands of SQL is same, still there's some difference.
## comment in database 
/* - */
## To see the databases 
### in MySQL
show Databases;
### in MSSQL Server
USE AdventureWorks2012;  
GO  
SELECT name, database_id, create_date  
FROM sys.databases ;  
GO

## using/selecting a database
use *databaseName*

## creating table 
### Mysql
CREATE TABLE *table_name{
id integer AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
_dataName_  _datatype(constrain)_,
size ENUM("small", "medium, "large"),
FOREIGN KEY(_column_name_ ) references _table_name_
}  

### MSSQL Server

CREATE TABLE products(
id INTEGER identity(1,1) primary key,  
name varchar(30),
size Varchar (10) CHECK(size IN("small", "medium","large")),
Foreign Key(id) references customers(id)
);

//identity(1,1)) keyword is used for auto increment in MSSQL, in which first digit is intial point and second parameter is interval of increment.
// there's no enum data type in MSSQL so we use:
 _data_ _data_type_ CHECK(size IN("small", "medium","large"))


## displaying the table 
### MySQL
SHOW TABLES;
 
### MSSQl
SELECT * FROM information_schema.tables; 

## adding new column
## mySQL
ALTER TABLE table_name
ADD COLUMN column_name datatype;

## MSSQL
ALTER TABLE products
ADD coffee_origin Varchar(30);
## deleting new column
## MySQL, MSSQL
ALTER TABLE products
Drop column coffee_origin ;

# DML- Data Manupulation Language- Insert Update Delete 
## inserting the values
### MYSQL
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1-1, value1-2, value1-3, ...),
(value2-1, value2-2, value2-3);


Insert Into products (name, price )
VALUES ('Espresso", 2.50  ); 

### MSSQL
Insert Into products (name, price )
VALUES ('Espresso', 2.50  ); 
/* use single quotes */


Insert Into products (name, price )
VALUES ('Macchiato', 3.00  ), ('cappuccino', 3.50); 

## updating data type 
### MySQL
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
   or
ALTER TABLE table_name
MODIFY column_name datatype;

### MS SQL
Alter table products
alter column name varchar(40);

## updating the data

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;



