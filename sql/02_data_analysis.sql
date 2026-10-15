1. Overall Volume & Average Duration Summary
-- Calculates total rides and average ride duration in minutes for members vs. casuals.
SELECT
  member_casual,
  COUNT(ride_id) AS total_rides,
  ROUND(AVG(ride_length) / 60, 2) AS avg_ride_length_minutes,
  ROUND(MAX(ride_length) / 3600, 2) AS max_ride_length_hours
FROM `case-study-1-cyclistic-511116.cyclistic_data.cleaned_trip_data`
GROUP BY member_casual;


2. Day of Week Rhythm Analysis
-- Analyzes ride counts and trip lengths across days of the week.
SELECT
  member_casual,
  day_of_week,
  COUNT(ride_id) AS total_rides,
  ROUND(AVG(ride_length) / 60, 2) AS avg_ride_length_minutes
FROM `case-study-1-cyclistic-511116.cyclistic_data.cleaned_trip_data`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week;

3. Hourly Commuter Rush Patterns
-- Measures trip volume across all 24 hours of the day to identify peak usage windows.
SELECT
  member_casual,
  EXTRACT(HOUR FROM started_at) AS start_hour,
  COUNT(ride_id) AS total_rides
FROM `case-study-1-cyclistic-511116.cyclistic_data.cleaned_trip_data`
GROUP BY member_casual, start_hour
ORDER BY member_casual, start_hour;

4. Bike Type Preferences
-- Compares usage counts across bike types (electric vs. classic).
SELECT
  member_casual,
  rideable_type,
  COUNT(ride_id) AS total_rides,
  ROUND(AVG(ride_length) / 60, 2) AS avg_ride_length_minutes
FROM `case-study-1-cyclistic-511116.cyclistic_data.cleaned_trip_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, rideable_type;
