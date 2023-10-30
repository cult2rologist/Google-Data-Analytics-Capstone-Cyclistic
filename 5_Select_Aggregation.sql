--finding average and maximum rides duration (separated by years)
SELECT year,
	   AVG(c.ride_dur) AS avg_ride_dur,
	   MAX(c.ride_dur) AS max_ride_dur
FROM (SELECT ended_at::TIME - started_at::TIME AS ride_dur,
	  		 EXTRACT(YEAR FROM started_at) AS year
	  FROM cyclist_clean) AS c
WHERE c.ride_dur > '00:00:00'
GROUP BY year
;

--finding the frequency (mode) of rides by day of the week
SELECT TO_CHAR(started_at, 'day') AS day,
	   COUNT(*) as num_app
FROM cyclist_clean
GROUP BY day
ORDER BY num_app DESC
;

--finding the average duration and number of rides for users by day of the week
SELECT TO_CHAR(started_at, 'day') AS day,
	   member_casual,
	   AVG(ended_at::TIME - started_at::TIME) AS avg_ride_dur,
	   COUNT(*) as ride_num
FROM cyclist_clean
GROUP BY day, member_casual
ORDER BY member_casual
;
