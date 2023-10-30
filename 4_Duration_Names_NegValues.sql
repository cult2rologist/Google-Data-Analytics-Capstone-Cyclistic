--finding a ride duration for each ride_id
--adding names to the days of the week for each ride_id
SELECT ended_at::TIME - started_at::TIME AS ride_dur,
	   TO_CHAR(started_at, 'DAY') AS day_of_week
FROM cyclist_clean
;

--checking for a rides with negative value duration
SELECT t.ride_dur
FROM (SELECT ended_at::TIME - started_at::TIME AS ride_dur
	  FROM cyclist_clean) AS t
WHERE t.ride_dur < '00:00:00'
;

--combining both selects and filtering out all the negative value rows
SELECT t.ride_id, t.ride_dur, t.day_of_week
FROM (SELECT ended_at::TIME - started_at::TIME AS ride_dur,
	  		 TO_CHAR(started_at, 'DAY') AS day_of_week,
	  		 ride_id
	  FROM cyclist_clean) AS t
WHERE t.ride_dur > '00:00:00'
;
