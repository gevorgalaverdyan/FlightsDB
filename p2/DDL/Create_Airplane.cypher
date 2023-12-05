// Load data from airplane.csv
LOAD CSV FROM 'file:///airplane.csv' AS line
CREATE (:Airplane {
    SNID: line[0], 
    capacity: toInteger(line[1]), 
    max_speed: toFloat(line[2]), 
    type: null,
    owner_name: null,
    airline_name: null
});

// Load data from privatejet.csv
LOAD CSV FROM 'file:///privatejet.csv' AS line
MATCH (plane:Airplane {SNID: line[0]})
SET plane.type = 'privatejet',
    plane.owner_name = line[1];

// Load data from commercialplane.csv
LOAD CSV FROM 'file:///commercialplane.csv' AS line
MATCH (plane:Airplane {SNID: line[0]})
SET plane.type = 'commercialplane',
    plane.airline_name = line[1];