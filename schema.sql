CREATE TABLE Passengers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL CHECK (age > 0)
);

CREATE TABLE Airlines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE Airline_Concourses (
    airline_id INTEGER NOT NULL,
    concourse TEXT NOT NULL CHECK (concourse IN ('A','B','C','D','E','F','T')),
    PRIMARY KEY (airline_id, concourse),
    FOREIGN KEY (airline_id) REFERENCES Airlines(id)
);

CREATE TABLE Flights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_number TEXT NOT NULL,
    airline_id INTEGER NOT NULL,
    origin_airport TEXT NOT NULL,
    destination_airport TEXT NOT NULL,
    departure_datetime DATETIME NOT NULL,
    arrival_datetime DATETIME NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES Airlines(id)
);

CREATE TABLE Checkins (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,
    checked_in DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(id),
    FOREIGN KEY (flight_id) REFERENCES Flights(id)
);
