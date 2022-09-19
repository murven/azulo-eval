
INSERT INTO airport.Location (id, country, provinceOrState, longitude, latitude) VALUES
    (1, 'United States', 'California', 43.677223, -79.630556),
    (2, 'United States', 'New York', 40.639751, -73.778925),
    (3, 'United States', 'Massachusetts', 42.364347, -71.005181),
    (4, 'United States', 'Texas', 32.896828, -97.038002),
    (5, 'United States', 'Florida', 25.79325, -80.290556),
    (6, 'United States', 'Illinois', 41.978603, -87.904842),
    (7, 'United States', 'Washington', 47.449, -122.309306),
    (8, 'United States', 'New Jersey', 40.6925, -74.168667),
    (9, 'United States', 'Georgia', 33.640444, -84.426944),
    (10, 'United States', 'North Carolina', 35.214, -80.943139);


INSERT INTO airport.AirportOperator (id, name) VALUES
    (1, 'United Airlines'),
    (2, 'Delta Air Lines'),
    (3, 'American Airlines'),
    (4, 'Southwest Airlines'),
    (5, 'JetBlue Airways'),
    (6, 'Spirit Airlines'),
    (7, 'Alaska Airlines'),
    (8, 'Frontier Airlines'),
    (9, 'Hawaiian Airlines'),
    (10, 'Allegiant Air');


INSERT INTO airport.Airport ( name, airportOperatorId, airportCode, locationId, priorityOrder) VALUES 
    ('Toronto Pearson International Airport', 1, 'YYZ', 1, 1),
    ('John F. Kennedy International Airport', 2, 'JFK', 2, 2),
    ('Logan International Airport', 3, 'BOS', 3, 3),
    ('Dallas/Fort Worth International Airport', 4, 'DFW', 4, 4),
    ('Miami International Airport', 5, 'MIA', 5, 5),
    ('O’Hare International Airport', 6, 'ORD', 6, 6),
    ('Seattle–Tacoma International Airport', 7, 'SEA', 7, 7),
    ('Newark Liberty International Airport', 8, 'EWR', 8, 8),
    ('Jackson Atlanta International Airport', 9, 'ATL',9, 9),
    ('Charlotte Douglas International Airport', 10, 'CLT',10, 10);

