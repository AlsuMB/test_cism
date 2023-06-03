CREATE TABLE flight_leg
(
    callsign varchar(500),
    number varchar(500),
    icao24 varchar(500),
    registration varchar(500),
    typecode varchar(500),
    origin varchar(500),
    destination varchar(500),
    firstseen timestamp,
    lastseen timestamp,
    day timestamp,
    latitude_1 double precision,
    longitude_1 double precision,
    altitude_1 double precision,
    latitude_2 double precision,
    longitude_2 double precision,
    altitude_2 double precision
)
;