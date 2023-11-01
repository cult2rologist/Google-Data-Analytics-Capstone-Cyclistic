CREATE TABLE cyclistic_2022 AS
SELECT ride_id,
	   rideable_type,
	   started_at::date AS s_ride_date,
	   started_at::time AS s_ride_time,
	   ended_at::date AS e_ride_date,
	   ended_at::time AS e_ride_time,
	   start_station_name,
	   start_station_id,
	   end_station_name,
	   end_station_id,
	   start_lat,
	   start_lng,
	   end_lat,
	   end_lng,
	   member_casual
FROM cyclist_clean
WHERE started_at::date > date '2022-01-01 00:00:00'
;

CREATE TABLE cyclistic_2021 AS
SELECT ride_id,
	   rideable_type,
	   started_at::date AS s_ride_date,
	   started_at::time AS s_ride_time,
	   ended_at::date AS e_ride_date,
	   ended_at::time AS e_ride_time,
	   start_station_name,
	   start_station_id,
	   end_station_name,
	   end_station_id,
	   start_lat,
	   start_lng,
	   end_lat,
	   end_lng,
	   member_casual
FROM cyclist_clean
WHERE started_at::date < date '2022-01-01 00:00:00'
;
