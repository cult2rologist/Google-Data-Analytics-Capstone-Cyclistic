--finding most visited start stations by casual riders
SELECT start_station_name,
       COUNT(*) AS num_app_sc
FROM cyclist_clean
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY num_app_sc DESC
LIMIT 10
;

--finding most visited end stations by casual riders
SELECT end_station_name,
       COUNT(*) AS num_app_ec
FROM cyclist_clean
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY num_app_ec DESC
LIMIT 10
;

--finding most visited start stations by member riders
SELECT start_station_name,
	   COUNT(*) AS num_app_sm
FROM cyclist_clean
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY num_app_sm DESC
LIMIT 10
;

--finding most visited end stations by member riders
SELECT end_station_name,
	   COUNT(*) AS num_app_em
FROM cyclist_clean
WHERE member_casual = 'member'
GROUP BY end_station_name
ORDER BY num_app_em DESC
LIMIT 10
;
