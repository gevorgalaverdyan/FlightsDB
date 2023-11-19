CREATE TABLE Flight (
	flight_id INT PRIMARY KEY,
	departure_location VARCHAR(100) NOTNULL,
	arrival_location VARCHAR(100) NOTNULL,
	departure_time DATE NOTNULL,
	arrival_time DATE NOTNULL,
	SNID INT,
	FOREIGN KEY(SNID) REFERENCES Airplane
		ON DELETE CASCADE
	
);