SELECT avg_price_sql() as average_of_all_products;


SELECT title, price
FROM products
WHERE price > avg_price_sql();


SELECT title, price
FROM products
WHERE price > avg_price_sql()*0.2;


SELECT title, price
FROM products
where price between avg_price_sql()*0.8 and avg_price_sql()*1.2;

