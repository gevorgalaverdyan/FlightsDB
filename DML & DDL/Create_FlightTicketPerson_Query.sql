CREATE TABLE FlightTicketPerson(
    PRIMARY KEY(seat_num, flight_id, p_id),
    seat_num INT NOT NULL,
    price FLOAT,
    class VARCHAR(50),
    Foreign Key (flight_id) REFERENCES (Flight) ON DELETE CASCADE,
    Foreign Key (p_id) REFERENCES (Person) ON DELETE CASCADE
);

