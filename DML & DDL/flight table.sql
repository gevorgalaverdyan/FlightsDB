CREATE TABLE Flight (
	flight_id INT PRIMARY KEY NOT NULL,
	departure_location VARCHAR(100) NOT NULL,
	arrival_location VARCHAR(100) NOT NULL,
	departure_time DATE NOT NULL,
	arrival_time DATE NOT NULL,
	SNID INT,
	FOREIGN KEY(SNID) REFERENCES Airplane(SNID) ON DELETE CASCADE
);
