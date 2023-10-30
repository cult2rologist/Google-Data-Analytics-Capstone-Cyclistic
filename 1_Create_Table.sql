--creating a table according to all data structure and content limitations
CREATE TABLE IF NOT EXISTS Cyclist (
	Id serial PRIMARY KEY,
	ride_id VARCHAR(50),
	rideable_type VARCHAR(50),
	started_at timestamp,
	ednded_at timestamp,
	start_station_name VARCHAR(100),
	start_station_id VARCHAR(50),
	end_station_name VARCHAR(100),
	end_station_id VARCHAR(50),
	start_lat decimal,
	start_lng decimal,
	end_lat decimal,
	end_lng decimal,
	member_casual VARCHAR(50)
);