//Using SQL
CREATE FUNCTION increase_price_sql(prod products)
RETURNS numeric AS
$$
	UPDATE products SET price = price + 0.05 * price
	WHERE prod_id = prod.prod_id RETURNING price;
$$
LANGUAGE sql;



select common_prod_id, increase_price_sql(products.*)
from products
where title='ACADEMY ADAPTION';


//Using Plpgsql
CREATE or replace FUNCTION increase_price_plpgsql(prod products)
RETURNS numeric AS
$$
DECLARE
	myprice numeric;
BEGIN
	UPDATE products SET price = price + 0.05 * price
	WHERE prod_id = prod.prod_id RETURNING price INTO myprice;
	RETURN myprice;
END;
$$
LANGUAGE plpgsql;


select common_prod_id, increase_price_plpgsql(products.*)
from products
where title='ACADEMY ADAPTION';

