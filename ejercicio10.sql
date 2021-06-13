//Using SQL
CREATE FUNCTION show_prod_cat_sql(catid integer) RETURNS SETOF products AS
$$
	SELECT * FROM products WHERE category = catid;
$$ LANGUAGE sql;



select count(*) from show_prod_cat_sql(1);


//Using Plpgsql
CREATE or replace FUNCTION show_prod_cat_plpgsql(catid integer) RETURNS SETOF products AS
$$
BEGIN
	RETURN QUERY
		SELECT * FROM products WHERE category = catid;
END;
$$ LANGUAGE plpgsql;


select count(*) from show_prod_cat_plpgsql(1);



