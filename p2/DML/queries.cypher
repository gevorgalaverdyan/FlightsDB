//no index: 
//#1 6ms 
//#2 6ms
//#3 6 to 10ms 
//#4 5 to 8ms
//#6 4 to 5ms

//with inedex: 
//#1 4ms 
//#2 4 to 6ms 
//#3 5 to 6ms
//#4 4 to 7ms 
//#6 4 ms 

//#1
PROFILE
MATCH (p:Person)
WHERE p.passenger_name = 'Lily Garcia'
RETURN p;

///2
PROFILE
MATCH (flight:Flight)
WHERE flight.departure_location = 'New York' 
RETURN COUNT(flight) AS numberOfFlights;

//3
PROFILE
MATCH (p:Person)
WHERE toLower(p.passenger_name) STARTS WITH 'a'
RETURN p
ORDER BY p.p_id
LIMIT 20;

//4
PROFILE
MATCH (flight:Flight)
WITH flight.departure_location AS departureLocation, COUNT(flight) AS numberOfFlights
RETURN departureLocation, numberOfFlights;

//5
CREATE INDEX FOR (p:Person) ON (p.passenger_name); 

CREATE INDEX FOR (flight:Flight) ON (flight.departure_location);

//6
PROFILE
MATCH (p:Person)
WHERE toLower(p.passenger_name) CONTAINS 'lily'
RETURN p;

//FULLTEXT INDEX 
CREATE FULLTEXT INDEX passenger_name FOR (n:Person) ON EACH [n.passenger_name];

CALL db.index.fulltext.queryNodes("passenger_name", "Maxwell") YIELD node, score
RETURN node.p_id, node.passenger_name, score
ORDER BY score DESC;
/////////////////////////////////////////////////
