CREATE FUNCTION show_prod_cat_plpgsql(catid integer) RETURNS SETOF products AS
$$
DECLARE
	prod products;
BEGIN
	For prod in
		SELECT * FROM products WHERE category = catid
	loop
		Return next prod;
	end loop;
END;
$$ LANGUAGE plpgsql;


SELECT * from show_prod_cat_plpgsql(1);



