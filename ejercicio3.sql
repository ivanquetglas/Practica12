//the first one with named parameters
CREATE FUNCTION insert_category1_sql(pcategory integer, pname varchar) 
RETURNS void AS
$$
INSERT INTO categories VALUES (pcategory, pname);
$$ LANGUAGE sql;


//the second one with numbered parameters
CREATE FUNCTION insert_category2_sql(integer, varchar) 
RETURNS void AS
$$
INSERT INTO categories VALUES ($1, $2); 
$$ LANGUAGE sql;


//the third one with parameters with the same name that the table fields
CREATE FUNCTION insert_category3_sql(category integer, categoryname varchar) RETURNS void AS
$$
INSERT INTO categories VALUES (insert_category3_sql.category,
insert_category3_sql.categoryname); 
$$ LANGUAGE sql; 


//the last one with only a single parameter
CREATE FUNCTION insert_category4_sql(pcategory categories) 
RETURNS void AS
$$
INSERT INTO categories VALUES (pcategory.category,
pcategory.categoryname); 
$$ LANGUAGE sql;


select insert_category1_sql(21, 'category21');
select insert_category2_sql(22, 'category22');
select insert_category3_sql(23, 'category23');
select insert_category4_sql((24, 'category24'));
