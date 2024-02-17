-- Create simple Materialized view

CREATE MATERIALIZED VIEW mw_rented_customers AS
	(SELECT 
	r.rental_id , r.rental_date, r.inventory_id,
	cst.customer_id, cst.store_id, cst.active, cst.last_update
	FROM 
	rental r
	LEFT JOIN 
	customer cst
	ON r.customer_id = cst.customer_id);


SELECT * FROM mw_rented_customers;

REFRESH MATERIALIZED VIEW mw_rented_customers;
