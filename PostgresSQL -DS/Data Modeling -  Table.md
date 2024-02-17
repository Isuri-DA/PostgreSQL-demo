#postgresql


Tutorial link - https://www.linkedin.com/learning/advanced-sql-for-data-scientists-13972889/partitioning-data?resume=false

My sample database - https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/


![[Pasted image 20240217113839.png]]

#### **PARTITION BY**
1. Horizontal
	1. Range
		1. Numeric / Alphabetical / Date
2. Vertical
3. Hash

#### **Materialized view**  - persisted result of a query
	Execute a query once 
	 Save result once ,read many times
	 

- When to use
	- Long running queries
	- Complex queries with multiple joints
	- Aggregation or derived data
- When NOT to use
	- Eventual consistency & refresh frequency
	- Cost of update process
	- Concurrent read during update (PostgreSQL this is default)
	- Size of the data


#### **Read Replica**
 - Why
	- Primary can focus on writes
	- Can be use multiple replicas to meet the read load
	- More read load than writes
	- Need to consider eventual consistency
		- Faster & less reliable method is 'write & forget' when primary doesn't wait on the confirmation from replica
		- Slowest & most reliable method is that Primary waits on replica confirmation  
