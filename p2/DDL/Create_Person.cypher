LOAD CSV FROM 'file:///person.csv' AS line
CREATE(:Person {
    p_id: line[0],
    passenger_name: line[1],
    tickets: []
});

LOAD CSV FROM 'file:///Flight_Ticket_Person.csv' AS line
MATCH(p:Person {p_id: line[2]})
MERGE (p)-[:HAS_TICKET]->(:Ticket {
    seat_num: toInteger(line[0]), 
    price: toFloat(line[3]), 
    class: line[4]
});
