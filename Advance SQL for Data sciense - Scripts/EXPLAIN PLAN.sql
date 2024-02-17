-- ***** EXPLAIN with WHERE

-- without table indexes 
SELECT * 
FROM iot.sensor_msmt
WHERE sensor_id between 10 and 20;



-- with table indexes 
SELECT * 
FROM iot.sensor_msmt
WHERE sensor_id between 10 and 20;



-- ***** EXPLAIN with JOIN
SELECT 
	sn.sensor_name,	sm.msmt_date,
	sm.temperature,	sm.humidity
FROM iot.sensor_msmt as sm
LEFT JOIN iot.sensors as sn
ON sm.sensor_id =sn.id
WHERE sn.id=30




