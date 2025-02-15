--11. Count Sales Per Day from the Sales table
select sale_date, COUNT(sale_id) AS sales_count from Sales
GROUP BY sale_date
ORDER BY sale_date

--12. Retrieve product_name and unit_price from the Products table with the Highest Unit Price
SELECT * FROM Products
SELECT product_name, unit_price FROM Products
WHERE unit_price = (SELECT MAX(unit_price) FROM Products)


SELECT TOP 1 product_name, unit_price FROM Products
ORDER BY unit_price desc 

--15. Retrieve the total_price of all sales, rounding the values to two decimal places.
SELECT * FROM products
SELECT ROUND(SUM(total_price), 2) FROM Sales

SELECT * FROM Sales
SELECT * FROM products
--1. Calculate the total quantity_sold of products in the 'Electronics' category.
SELECT SUM(s.quantity_sold) as total_quantity_sold FROM Sales s JOIN
Products p on s.product_id = p.product_id
WHERE p.category = 'Electronics'