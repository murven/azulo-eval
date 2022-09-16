
CREATE DATABASE IF NOT EXISTS airport; -- Create the working database
CREATE DATABASE IF NOT EXISTS directus; -- Create the Directus database

CREATE TABLE airport.Location (
    id BINARY(16) PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    provinceOrState VARCHAR(50) NOT NULL,
    longitude decimal(11,7) NOT NULL,
    latitude decimal(11,7) NOT NULL
);

CREATE TABLE airport.AirportOperator (
    id BINARY(16) PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE airport.Airport (
    id BINARY(16) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    airportOperatorId BINARY(16) NOT NULL,
    airportCode VARCHAR(3) NOT NULL,
    locationId BINARY(16) NOT NULL,
    priorityOrder INT NOT NULL,
    FOREIGN KEY (airportOperatorId) REFERENCES airport.AirportOperator(id),
    FOREIGN KEY (locationId) REFERENCES airport.Location(id)
);

