CREATE TABLE cyclistic_2022 AS
SELECT *
FROM cyclist_clean
WHERE started_at::date > date '2022-01-01 00:00:00'
;

CREATE TABLE cyclistic_2021 AS
SELECT *
FROM cyclist_clean
WHERE started_at::date < date '2022-01-01 00:00:00'
;