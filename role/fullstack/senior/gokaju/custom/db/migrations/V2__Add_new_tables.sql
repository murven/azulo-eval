--  DDL para crear las tablas adicionales de la base de datos ( Airplanes, Flights y Pilots)

CREATE TABLE airport.Airplanes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    licence VARCHAR(50) NOT NULL
);

CREATE TABLE airport.Pilots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE airport.Flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    AirportId INT NOT NULL,
    departureDate  DATETIME NOT NULL,
    destinationAirportId INT NOT NULL,
    airplaneId INT NOT NULL,
    pilotId INT NOT NULL,
    FOREIGN KEY (AirportId) REFERENCES airport.Airport(id),
    FOREIGN KEY (destinationAirportId) REFERENCES airport.Airport(id),
    FOREIGN KEY (airplaneId) REFERENCES airport.Airplanes(id),
    FOREIGN KEY (pilotId) REFERENCES airport.Pilots(id)
);

