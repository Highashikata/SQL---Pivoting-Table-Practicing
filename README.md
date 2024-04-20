# SQL---Pivoting-Table-Practicing

In this repository, we will practice the Pivot feature in SQL tables.
Given the following Input and Output of Data.

![image](https://github.com/Highashikata/SQL---Pivoting-Table-Practicing/assets/96960411/a66005dd-950c-4905-ab1c-dc3cc4d5a1c1)


We will Write A Pivot query

### DDL
```
DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data
  (
     sales_date  DATE,
     customer_id VARCHAR(30),
     amount      VARCHAR(30)
  ); 
```


### DML

```
INSERT INTO sales_data (sales_date, customer_id, amount)
VALUES 
    ('2021-01-01', 'cust-1', '50$'),
    ('2021-01-02', 'cust-1', '50$'),
    ('2021-01-03', 'cust-1', '50$'),
    ('2021-01-01', 'cust-2', '100$'),
    ('2021-01-02', 'cust-2', '100$'),
  	('2021-01-03', 'cust-2', '100$'),
  	('2021-02-01', 'cust-2', '-100$'),
  	('2021-02-02', 'cust-2', '-100$'),
  	('2021-02-03', 'cust-2', '-100$'),
  	('2021-03-01', 'cust-3', '1$'),
  	('2021-04-01', 'cust-3', '1$'),
  	('2021-05-01', 'cust-3', '1$'),
  	('2021-06-01', 'cust-3', '1$'),
  	('2021-07-01', 'cust-3', '-1$'),
  	('2021-08-01', 'cust-3', '-1$'),
  	('2021-09-01', 'cust-3', '-1$'),
  	('2021-10-01', 'cust-3', '-1$'),
  	('2021-11-01', 'cust-3', '-1$'),
  	('2021-12-01', 'cust-3', '-1$')
```


### DQL
