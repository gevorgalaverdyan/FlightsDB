CREATE (Airplane)-[a: HAS_FLIGHT]->(Flight);

LOAD CSV FROM 'file:///flight.csv' AS line
MATCH (plane: Airplane {SNID: line[5]}, flight: Flight {})


MATCH (a:Actor), (m:Movie) WHERE a.actor_SQL_id = m.movie_SQL_id
CREATE (a)-[:actsIn]->(m);