LOAD CSV FROM 'file:///flight.csv' AS line
CREATE (:Flight {
    flight_id: line[0], 
    departure_location: line[1], 
    arrival_location: line[2], 
    departure_time: line[3], 
    arrival_time: line[4]
});