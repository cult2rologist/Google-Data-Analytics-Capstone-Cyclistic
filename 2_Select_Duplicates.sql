--checking for duplicates presence and its number
--were found 12.522.804 rows with 1.260.024 duplicates
SELECT 
	COUNT(id) AS num_ttl_id,
	COUNT(DISTINCT ride_id) AS num_unq_rides,
	COUNT(id) - COUNT(DISTINCT ride_id) AS num_of_duplicates
FROM cyclist
;

--finding all duplicates for deletion
SELECT ride_id, COUNT(*) 
FROM cyclist 
GROUP BY ride_id
HAVING COUNT(*) > 1
;

--deleting only duplicates of original rows
DELETE FROM cyclist AS x
	USING cyclist AS y
WHERE x.id < y.id
	AND x.ride_id = y.ride_id
;

--checking for duplicates presence and its number after deletion
--were found 11.262.780 rows with 0 duplicates
SELECT 
	COUNT(id) AS num_ttl_id,
	COUNT(DISTINCT ride_id) AS num_unq_rides,
	COUNT(id) - COUNT(DISTINCT ride_id) AS num_of_duplicates
FROM cyclist
;
