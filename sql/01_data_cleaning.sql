-- Add calculated fields

CREATE OR REPLACE TABLE `case-study-1-cyclistic-511116.cyclistic_data.master_trip_data` AS
SELECT 
    *,
    -- Calculates the total duration of the trip in seconds
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length,
    
    -- Extracts the day of the week (1 = Sunday, 2 = Monday, ... 7 = Saturday)
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week
FROM `case-study-1-cyclistic-511116.cyclistic_data.master_trip_data`;


-- To confirm new calculated fields

SELECT 
    started_at, 
    ended_at, 
    ride_length, 
    day_of_week 
FROM `case-study-1-cyclistic-511116.cyclistic_data.master_trip_data` 
LIMIT 5;


-- Cleaning query

CREATE OR REPLACE TABLE `case-study-1-cyclistic-511116.cyclistic_data.cleaned_trip_data` AS
SELECT DISTINCT *
FROM `case-study-1-cyclistic-511116.cyclistic_data.master_trip_data`
WHERE 
    -- 1. Remove rides with duration less than or equal to 0 seconds
    ride_length > 0
    
    -- 2. Remove rides longer than 24 hours (86,400 seconds) - likely lost or stolen bikes
    AND ride_length <= 86400
    
    -- 3. Remove rides shorter than 60 seconds that end at the exact same station (false starts)
    AND NOT (ride_length < 60 AND start_station_id = end_station_id)
    
    -- 4. Remove internal test/maintenance rides
    AND (start_station_name IS NULL OR NOT REGEXP_CONTAINS(start_station_name, r'(?i)HQ QR|\bTest\b'))
    AND (end_station_name IS NULL OR NOT REGEXP_CONTAINS(end_station_name, r'(?i)HQ QR|\bTest\b'));
