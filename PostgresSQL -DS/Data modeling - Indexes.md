Links &  data - [[Data Modeling -  Table]]

- Why?  Reduce the data block scans
- Cost - additional write time when data loading
- Higher the cardinality in indexed data better the performance improvement 
- Not used in analytical databases such as `Google Big Query`


## B-Tree
(Balanced)
- Capture small amount of data
- Works with many cases
- Logarithmic time complexity log(n)
	- O(log n) running time, it means that **as the input size grows, the number of operations grows very slowly** 
## Bitmap
- When accessing can be perform as a bit wise operator AND OR NOT
- Expensive to build 
- Some databases allows to create explicitly but not the PostgreSQL
## Hash Index
- Uses hash functions - mapping arbitrary length data into fixed length string
- Works very well in key-value kind of data
-
-------------

## GiST & PS-GiST Indexes
(Generalized Search Tree - Only in PostgreSQL)
- U ??
## GIN Indexes
(Generalized Inverted - Only in PostgreSQL)
- U ??
## BRIN Indexes
(Block Range  - Only in PostgreSQL)
- Use with very large tables


