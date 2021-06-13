// Using SQL
CREATE FUNCTION show_cust_sql(id integer) RETURNS customers AS
$$
SELECT * FROM customers WHERE customerid=id;
$$ LANGUAGE sql


select * from show_cust_sql(2);
select (show_cust_sql(2)).firstname;


//Using Plpgsql
CREATE FUNCTION show_cust_plpgsql(id integer) RETURNS customers AS
$$
DECLARE
	cust customers;
BEGIN
	SELECT * INTO cust FROM customers WHERE customerid = id;
	RETURN cust;
END;
$$ LANGUAGE plpgsql;


select * from show_cust_plpgsql(2);
select (show_cust_plpgsql(2)).firstname;


