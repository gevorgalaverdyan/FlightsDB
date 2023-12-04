LOAD CSV FROM 'file:///person.csv' AS line
CREATE(:Person {
    p_id: line[0],
    passenger_name: line[1],
    tickets: []
});