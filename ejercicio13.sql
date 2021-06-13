//add integers
CREATE or replace FUNCTION mySum(integer, integer) RETURNS bigint AS
$$
BEGIN
	RETURN $1+$2;
END;
$$ LANGUAGE plpgsql;


//add decimals
CREATE or replace FUNCTION mySum(numeric, numeric) RETURNS numeric AS
$$
BEGIN
	RETURN $1+$2;
END;
$$ LANGUAGE plpgsql;



//add string
CREATE or replace FUNCTION mySum(text, text) RETURNS text  AS
$$
BEGIN
	RETURN $1 || $2;
END;
$$ LANGUAGE plpgsql;

select mySum(1,1), mySum(1.1,1), mySum('1', '1');

