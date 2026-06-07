-- Row counts
SELECT 'drivers' AS table_name, COUNT(*) FROM drivers;
SELECT 'races' AS table_name, COUNT(*) FROM races;

-- Sample rows
SELECT * FROM results LIMIT 10;
-- Check tables
SHOW TABLES;
/*verify ingestion*/

/*all csvs imported correctly in mysql*/ 

SELECT 'circuits' AS table_name, COUNT(*) AS row_count FROM circuits;

SELECT 'constructor_results' AS table_name, COUNT(*) AS row_count FROM constructor_results;
SELECT 'constructor_standings' AS table_name, COUNT(*) AS row_count FROM constructor_standings;

SELECT 'constructors' AS table_name, COUNT(*) AS row_count FROM constructors;

SELECT 'driver_standings' AS table_name, COUNT(*) AS row_count FROM driver_standings;

SELECT 'drivers' AS table_name, COUNT(*) AS row_count FROM drivers;

SELECT 'lap_times' AS table_name, COUNT(*) AS row_count FROM lap_times;

SELECT 'pit_stops' AS table_name, COUNT(*) AS row_count FROM pit_stops;

SELECT 'qualifying' AS table_name, COUNT(*) AS row_count FROM qualifying;

SELECT 'races' AS table_name, COUNT(*) AS row_count FROM races;

SELECT 'results' AS table_name, COUNT(*) AS row_count FROM results;

SELECT 'seasons' AS table_name, COUNT(*) AS row_count FROM seasons;

SELECT 'sprint_results' AS table_name, COUNT(*) AS row_count FROM sprint_results;

SELECT 'status' AS table_name, COUNT(*) AS row_count FROM status;

/*quiclk visual check*/

SELECT * FROM drivers LIMIT 5;
SELECT * FROM races LIMIT 5;
SELECT * FROM results LIMIT 5;
