LOAD CSV FROM 'file:///flight.csv' AS line
MATCH (plane:Airplane {SNID: line[5]}), (flight:Flight {flight_id: line[0]})
CREATE (plane)-[:HAS_FLIGHT]->(flight);

LOAD CSV FROM 'file:///Flight_Ticket_Person.csv' AS line
MATCH (person: Person {p_id: line[2]}), (flight: Flight {flight_id: line[1]})
CREATE (flight)-[:FLIGHT_PERSON]->(person);

LOAD CSV FROM 'file:///favpokemon.csv' AS line
MATCH (person: Person {p_id: line[0]}), (pokemon: Pokemon {poke_id: line[1]})
CREATE (person)-[:FAV_POKEMON]->(pokemon);