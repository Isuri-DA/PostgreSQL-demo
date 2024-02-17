DROP TABLE IF EXISTS iot.sensor_msmt;

CREATE TABLE iot.sensor_msmt (
	sensor_id int not null,
	msmt_date date not null,
	temperature int,
	humidity int
)
PARTITION BY RANGE(msmt_date);


CREATE TABLE iot.sensor_msmt_y2021m01 PARTITION OF iot.sensor_msmt
	FOR VALUES FROM('2021-01-01') TO('2021-02-01');
	
CREATE TABLE iot.sensor_msmt_y2021m02 PARTITION OF iot.sensor_msmt
	FOR VALUES FROM('2021-02-01') TO('2021-03-01');
	
CREATE INDEX idx_sensor_msmt_id ON iot.sensor_msmt(sensor_id);