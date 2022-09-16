
INSERT INTO airport.Location (id, country, provinceOrState, longitude, latitude) VALUES
    (UUID_TO_BIN('e762634c-3e41-11eb-b897-0862660ccbd4'), 'United States', 'California', 43.677223, -79.630556),
    (UUID_TO_BIN('7de391fe-4806-49de-8014-a9c7be8725ca'), 'United States', 'New York', 40.639751, -73.778925),
    (UUID_TO_BIN('f7beb449-fa80-41c3-8b2d-c5554e39afff'), 'United States', 'Massachusetts', 42.364347, -71.005181),
    (UUID_TO_BIN('d27cf3aa-01d0-40da-8dbb-89467d152fad'), 'United States', 'Texas', 32.896828, -97.038002),
    (UUID_TO_BIN('0616c010-d4cd-4a2f-a132-ff2e05237d9f'), 'United States', 'Florida', 25.79325, -80.290556),
    (UUID_TO_BIN('3cb01325-b4a2-4a01-8680-b1c13d856601'), 'United States', 'Illinois', 41.978603, -87.904842),
    (UUID_TO_BIN('428febef-0bc2-4700-a23c-632f020a2924'), 'United States', 'Washington', 47.449, -122.309306),
    (UUID_TO_BIN('73d2bf0a-e5bf-471e-a884-f8e02121e988'), 'United States', 'New Jersey', 40.6925, -74.168667),
    (UUID_TO_BIN('691540d0-df28-4082-9646-9f887e8c92f9'), 'United States', 'Georgia', 33.640444, -84.426944),
    (UUID_TO_BIN('8db4e7d9-155b-429b-987b-b73489df20ab'), 'United States', 'North Carolina', 35.214, -80.943139);


INSERT INTO airport.AirportOperator (id, name) VALUES
    (UUID_TO_BIN('4ed39b9c-5f17-40f4-8d28-b847f33e2b8d'), 'United Airlines'),
    (UUID_TO_BIN('b314e1b8-f783-4f0f-bbae-f226455afc27'), 'Delta Air Lines'),
    (UUID_TO_BIN('11cf7734-2100-43a7-9b95-a4e0568af9bb'), 'American Airlines'),
    (UUID_TO_BIN('ab05bf90-6562-4037-97fd-780cc94c5c01'), 'Southwest Airlines'),
    (UUID_TO_BIN('7de0e7df-a6d2-4df9-af71-5faf93a192a3'), 'JetBlue Airways'),
    (UUID_TO_BIN('e5c7913f-00b6-40b5-a785-d5e8e49915a3'), 'Spirit Airlines'),
    (UUID_TO_BIN('929ca363-24c0-4854-8847-133537694932'), 'Alaska Airlines'),
    (UUID_TO_BIN('17fb1eb3-6a7b-4b18-adda-2a25ef1ada41'), 'Frontier Airlines'),
    (UUID_TO_BIN('d640b264-70fc-4927-a2a3-d9de675bb1e9'), 'Hawaiian Airlines'),
    (UUID_TO_BIN('fa8d54c9-59fb-40ac-b15b-cf7b54804b8e'), 'Allegiant Air');


INSERT INTO airport.Airport (id, name, airportOperatorId, airportCode, locationId, priorityOrder) VALUES 
    (UUID_TO_BIN(UUID()), 'Toronto Pearson International Airport', UUID_TO_BIN('4ed39b9c-5f17-40f4-8d28-b847f33e2b8d'), 'YYZ', UUID_TO_BIN('e762634c-3e41-11eb-b897-0862660ccbd4'), 1),
    (UUID_TO_BIN(UUID()), 'John F. Kennedy International Airport', UUID_TO_BIN('b314e1b8-f783-4f0f-bbae-f226455afc27'), 'JFK', UUID_TO_BIN('7de391fe-4806-49de-8014-a9c7be8725ca'), 2),
    (UUID_TO_BIN(UUID()), 'Logan International Airport', UUID_TO_BIN('11cf7734-2100-43a7-9b95-a4e0568af9bb'), 'BOS', UUID_TO_BIN('f7beb449-fa80-41c3-8b2d-c5554e39afff'), 3),
    (UUID_TO_BIN(UUID()), 'Dallas/Fort Worth International Airport', UUID_TO_BIN('ab05bf90-6562-4037-97fd-780cc94c5c01'), 'DFW', UUID_TO_BIN('d27cf3aa-01d0-40da-8dbb-89467d152fad'), 4),
    (UUID_TO_BIN(UUID()), 'Miami International Airport', UUID_TO_BIN('7de0e7df-a6d2-4df9-af71-5faf93a192a3'), 'MIA', UUID_TO_BIN('0616c010-d4cd-4a2f-a132-ff2e05237d9f'), 5),
    (UUID_TO_BIN(UUID()), 'O’Hare International Airport', UUID_TO_BIN('e5c7913f-00b6-40b5-a785-d5e8e49915a3'), 'ORD', UUID_TO_BIN('3cb01325-b4a2-4a01-8680-b1c13d856601'), 6),
    (UUID_TO_BIN(UUID()), 'Seattle–Tacoma International Airport', UUID_TO_BIN('929ca363-24c0-4854-8847-133537694932'), 'SEA', UUID_TO_BIN('428febef-0bc2-4700-a23c-632f020a2924'), 7),
    (UUID_TO_BIN(UUID()), 'Newark Liberty International Airport', UUID_TO_BIN('17fb1eb3-6a7b-4b18-adda-2a25ef1ada41'), 'EWR', UUID_TO_BIN('73d2bf0a-e5bf-471e-a884-f8e02121e988'), 8),
    (UUID_TO_BIN(UUID()), 'Hartsfield–Jackson Atlanta International Airport', UUID_TO_BIN('d640b264-70fc-4927-a2a3-d9de675bb1e9'), 'ATL', UUID_TO_BIN('691540d0-df28-4082-9646-9f887e8c92f9'), 9),
    (UUID_TO_BIN(UUID()), 'Charlotte Douglas International Airport', UUID_TO_BIN('fa8d54c9-59fb-40ac-b15b-cf7b54804b8e'), 'CLT', UUID_TO_BIN('8db4e7d9-155b-429b-987b-b73489df20ab'), 10);

