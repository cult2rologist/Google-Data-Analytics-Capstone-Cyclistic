--creating a new table from existing without any NULLs
CREATE TABLE cyclist_clean AS
SELECT *
FROM cyclist
WHERE 
	ride_id IS NOT NULL
	AND rideable_type IS NOT NULL
	AND started_at IS NOT NULL
	AND ended_at IS NOT NULL
	AND start_station_name IS NOT NULL
	AND start_station_id IS NOT NULL
	AND end_station_name IS NOT NULL
	AND end_station_id IS NOT NULL
	AND start_lat IS NOT NULL
	AND start_lng IS NOT NULL
	AND end_lat IS NOT NULL
	AND end_lng IS NOT NULL
	AND member_casual IS NOT NULL
;