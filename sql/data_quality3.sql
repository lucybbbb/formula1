ALTER TABLE races
ADD CONSTRAINT fk_races_circuits
FOREIGN KEY (circuitId)
REFERENCES circuits(circuitId);

ALTER TABLE results
ADD CONSTRAINT fk_results_races
FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE results
ADD CONSTRAINT fk_results_drivers
FOREIGN KEY (driverId)
REFERENCES drivers(driverId);

ALTER TABLE results
ADD CONSTRAINT fk_results_constructors
FOREIGN KEY (constructorId)
REFERENCES constructors(constructorId);

ALTER TABLE results
ADD CONSTRAINT fk_results_status
FOREIGN KEY (statusId)
REFERENCES status(statusId);

ALTER TABLE lap_times
ADD CONSTRAINT fk_lap_times_races
FOREIGN KEY (raceId)
REFERENCES races(raceId);

ALTER TABLE lap_times
ADD CONSTRAINT fk_lap_times_drivers
FOREIGN KEY (driverId)
REFERENCES drivers(driverId);


SHOW CREATE TABLE qualifying;
SELECT
  CONSTRAINT_NAME,
  COLUMN_NAME,
  REFERENCED_TABLE_NAME,
  REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'formula_1'
  AND TABLE_NAME = 'qualifying'
  AND REFERENCED_TABLE_NAME IS NOT NULL;

/*erd created and visible in mysql*/
