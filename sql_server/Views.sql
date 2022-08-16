

USE BikeStores;

SELECT
    product_name, 
    brand_name, 
    list_price
FROM
    production.products p
	INNER JOIN production.brands b 
	ON b.brand_id = p.brand_id;



-- create a view from the above query
create view sales.product_info
as
SELECT
    product_name, 
    brand_name, 
    list_price
FROM
    production.products p
	INNER JOIN production.brands b 
	ON b.brand_id = p.brand_id;


-- read the data from the view
SELECT * FROM sales.product_info;


-- view tio get data from products, order items and sales.order
CREATE VIEW sales.daily_sales
AS
SELECT
    year(order_date) AS y,
    month(order_date) AS m,
    day(order_date) AS d,
    p.product_id,
    product_name,
    quantity * i.list_price AS sales
FROM
    sales.orders AS o
INNER JOIN sales.order_items AS i
    ON o.order_id = i.order_id
INNER JOIN production.products AS p
    ON p.product_id = i.product_id;

SELECT * 
FROM sales.daily_sales
ORDER BY y, m, d, product_name;

-- redefing the above created view
CREATE OR ALTER sales.daily_sales(
    year,
    month,
    day,
    customer_name,
    product_id,
    product_name,
    sales
)
AS
SELECT
    year(order_date),
    month(order_date),
    day(order_date),
    concat(
        first_name,
        ' ',
        last_name
    ),
    p.product_id,
    product_name,
    quantity * i.list_price
FROM
    sales.orders AS o
    INNER JOIN
        sales.order_items AS i
    ON o.order_id = i.order_id
    INNER JOIN
        production.products AS p
    ON p.product_id = i.product_id
    INNER JOIN sales.customers AS c
    ON c.customer_id = o.customer_id;
