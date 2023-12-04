LOAD CSV FROM 'file:///pokemon.csv' AS line
CREATE(:Pokemon{
    poke_id: line[0],
    name: line[1],
    pok_height: toFloat(line[2]),
    pok_weight: toFloat(line[3]),
    pok_base_experience: toFloat(line[4])
});