//Using SQL
CREATE or replace FUNCTION show_prod_sql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) AS
$$
SELECT prod_id, title, price FROM products WHERE prod_id = show_prod_sql.prod_id;
$$ LANGUAGE sql;


select * from show_prod_sql(2);



//Using Plpgsql
CREATE or replace FUNCTION show_prod_plpgsql(INOUT prod_id integer, OUT title varchar(50), OUT price numeric) RETURNS RECORD AS
$$
BEGIN
SELECT p.prod_id, p.title, p.price INTO
show_prod_plpgsql.prod_id,
show_prod_plpgsql.title,
show_prod_plpgsql.price
FROM products p WHERE p.prod_id = show_prod_plpgsql.prod_id;
END;
$$ LANGUAGE plpgsql;


select * from show_prod_plpgsql(2);

