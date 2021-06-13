//Using SQL
CREATE FUNCTION show_name_sql(id integer, OUT first varchar, OUT last varchar) AS
$$
SELECT firstname, lastname FROM customers WHERE customerid = id;
$$ LANGUAGE sql;


select show_name_sql(2);
select first, last from show_name_sql(2);



//Using Plpgsql
CREATE FUNCTION show_name_plpgsql(id integer, OUT first varchar, OUT last varchar)
AS
$$
BEGIN
SELECT firstname, lastname INTO first, last FROM customers 
WHERE customerid = id;
END
$$ LANGUAGE plpgsql;


select show_name_plpgsql(2);
select first, last from show_name_plpgsql(2);
