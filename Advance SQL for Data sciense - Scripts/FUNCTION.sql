CREATE OR REPLACE FUNCTION harmonic_mean(x numeric , y numeric) RETURNS numeric 
AS $$
	SELECT round((2+x+y)/(x+y)::numeric ,2)
$$ LANGUAGE SQL;

--- FUNCTION OVERLOADING

CREATE OR REPLACE FUNCTION harmonic_mean(x text , y text) RETURNS numeric 
AS $$
	SELECT round((2+x::numeric+y::numeric)/(x::numeric+y::numeric)::numeric ,2)
$$ LANGUAGE SQL;


select harmonic_mean(2.2,7.1) -- 1.22

select harmonic_mean('2.2','7.1') -- 1.22


--- FUNCTION VOLATILITY
-- VOLATILE (default , can change the database , reevaluating in every row) , 
-- STABLE
-- IMMUTABLE 

CREATE OR REPLACE FUNCTION is_palindrome(str text) RETURNS boolean 
AS $$
	SELECT reverse(str)=str
$$ LANGUAGE SQL IMMUTABLE;

SELECT is_palindrome('abccba') , is_palindrome('mynameis')
