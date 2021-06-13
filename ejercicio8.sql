//Using SQL
CREATE or replace FUNCTION avg_price_sql() RETURNS numeric AS
$$
SELECT AVG(price) as average FROM products;
$$ LANGUAGE sql;


select * from avg_price_sql();



//Using Plpgsql
CREATE or replace FUNCTION avg_price_plpgsql() RETURNS numeric AS
$$
DECLARE
average numeric;
BEGIN
SELECT INTO average AVG(price) FROM products;
RETURN average;
END;
$$ LANGUAGE plpgsql;


select * from avg_price_plpgsql();


//Not using avg
CREATE or replace FUNCTION avg_price_noavg() RETURNS numeric AS
$$
DECLARE average products.price%type;
BEGIN
SELECT sum(price)/count(*) into average FROM products;
RETURN average;
END;
$$ LANGUAGE plpgsql;

select * from avg_price_noavg();

