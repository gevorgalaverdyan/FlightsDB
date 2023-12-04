LOAD CSV FROM 'file:///airplane.csv' AS line
CREATE (:Airplane {
    SNID: line[0], 
    capacity: toInteger(line[1]), 
    max_speed: toFloat(line[2]), 
    type: null,
    owner_name: null,
    airline_name: null
});

LOAD CSV FROM 'file:///privatejet.csv' AS line
MATCH (plane:Airplane {SNID: line[0]})
SET plane.type = 'privatejet',
SET plane.owner_name = line[1];

LOAD CSV FROM 'file:///commercialplane.csv' AS line
MATCH (plane:Airplane {SNID: line[0]})
SET plane.type = 'commercialplane',
SET plane.airline_name = line[1];