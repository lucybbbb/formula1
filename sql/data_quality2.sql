/*check null adistribution*/
/*identify natural keys*/
/*add primary keys*/
/*add foreign keys*/

-- Results table: where do NULLs exist?
SELECT
  COUNT(*) AS total_rows,
  COUNT(position) AS position_not_null,
  COUNT(fastestLapTime) AS fastest_lap_time_not_null,
  COUNT(milliseconds) AS milliseconds_not_null
FROM results;
SELECT
  COUNT(*) AS total_rows,
  COUNT(date) AS race_date_not_null
FROM races;
--- Check critical NULLs in results
SELECT
  SUM(raceId IS NULL) AS raceId_nulls,
  SUM(driverId IS NULL) AS driverId_nulls,
  SUM(constructorId IS NULL) AS constructorId_nulls
FROM results;

-- Check critical NULLs in races
SELECT
  SUM(raceId IS NULL) AS raceId_nulls,
  SUM(circuitId IS NULL) AS circuitId_nulls,
  SUM(date IS NULL) AS date_nulls
FROM races;

-- Check critical NULLs in lap_times
SELECT
  SUM(raceId IS NULL) AS raceId_nulls,
  SUM(driverId IS NULL) AS driverId_nulls,
  SUM(lap IS NULL) AS lap_nulls
FROM lap_times;


SHOW CREATE TABLE lap_times;
SHOW CREATE TABLE qualifying;
SHOW CREATE TABLE results;
