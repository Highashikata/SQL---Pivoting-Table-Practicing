-- Fetching the Data from the tables
select * from sales_data;


-- Pivoting the table, to meet the Expected Output
-- Unabling the CROSSTAB feature

create extension if not exists tablefunc;

select *
from crosstab(
			'SELECT 
			  	customer_id as customer, 
			  	to_char(Sales_Date, 'Mon-YY') as sales_date, 
			  	cast(replace(Amount, '$', '') as int) as amount 
			  FROM sales_data 
			  ORDER BY customer_id', 
			'SELECT DISTINCT TO_CHAR(Sales_Date, 'Mon-YY') AS sales_month
				FROM sales_data
			 ORDER BY sales_month'
) as result(Customer varchar(30),
			Jan-21 varchar(30),
			Feb-21 varchar(30),
			Mar-21 varchar(30),
			Apr-21 varchar(30),
			May-21 varchar(30),
			Jun-21 varchar(30),
			Jul-21 varchar(30),
			Aug-21 varchar(30),
			Sept-21 varchar(30),
			Oct-21 varchar(30),
			Nov-21 varchar(30),
			Dec-21 varchar(30)
		   );
			  
  



			  
SELECT customer_id, SUM(CASE 
             WHEN amount LIKE '-%' THEN -CAST(REPLACE(amount, '$', '') AS numeric)
             ELSE CAST(REPLACE(amount, '$', '') AS numeric)
           END) || '$' AS total_amount
FROM sales_data
GROUP BY customer_id;




SELECT x.total_amount FROM (SELECT 
	customer_id,
    EXTRACT(MONTH FROM sales_date) AS month,
    SUM(
        CASE 
            WHEN amount LIKE '-%' THEN -CAST(REPLACE(amount, '$', '') AS numeric)
            ELSE CAST(REPLACE(amount, '$', '') AS numeric)
        END
    ) || '$' AS total_amount
FROM 
    sales_data
GROUP BY 
	customer_id,
    EXTRACT(MONTH FROM sales_date)
ORDER BY 
    customer_id, month) x;



