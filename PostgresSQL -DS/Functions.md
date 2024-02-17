

## FUNCTION VOLATILITY
- VOLATILE 
	- default type
	- can change the database
	- reevaluating in every row
- STABLE
	- cannot modify the database
	- enables some optimization
	- get the same result given the same argument in all rows
- IMMUTABLE
	- cannot modify the database
	- enables most optimization
	- get the same result given the same argument in all rows


## PL/Python
PostgreSQL function in Python , use a Postgres extension


```PostgreSQL
CREATE OR REPLACE FUNCTION is_palindrome(str text) RETURNS boolean 
AS $$
	SELECT reverse(str)=str
$$ LANGUAGE SQL IMMUTABLE;

SELECT is_palindrome('abccba') , is_palindrome('mynameis')
```