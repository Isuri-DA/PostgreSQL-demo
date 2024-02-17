INSERT INTO iot.sensor_msmt
	( WITH sensor_datetime AS
	 ( SELECT * FROM
		(SELECT * FROM generate_series(1,100))as t1,
		(SELECT * FROM generate_series('2021-01-01 00:00'::timestamp ,
									   '2021-02-15 00:00'::timestamp , '1 minutes'))as t2
	 )
	SELECT sd.* ,
		floor(random()*30) as temperature,
		floor(random()*80) as humidity
	FROM sensor_datetime sd
	 );
	 
	 
SELECT * FROM iot.sensor_msmt;


-- -----------------

CREATE TABLE iot.sensors AS
	(WITH sensor_ids AS
		(SELECT i FROM generate_series(1,100) as i)
	SELECT i as id , 'Sensor '||i ::text as sensor_name 
	FROM sensor_ids);
	
	