-- #1
SELECT p.p_id, p.passenger_name 
FROM Person AS p
WHERE p.passenger_name = 'Jay Patel'

-- #2
SELECT t.class, COUNT(t.seat_num)
FROM flightticketperson AS t
GROUP BY t.class


SELECT a.max_speed, COUNT(a.SNID)
FROM Airplane AS a
GROUP BY a.max_speed
HAVING COUNT(*) > 1

-- #3
select * 
from airplane a, flight f
where f.snid = a.snid

SELECT * 
from flight f
join airplane a
on f.snid = a.snid

-- #4
SELECT * 
from flight f
inner join airplane a
on f.snid = a.snid AND departure_location='Vladikafdast'

SELECT * 
from flight f
left outer join airplane a
on f.snid = a.snid AND departure_location='Vladikafdast'

SELECT * 
from flight f
right outer join airplane a
on f.snid = a.snid AND departure_location='Vladikafdast'

SELECT * 
from flight f
full join airplane a
on f.snid = a.snid AND departure_location='Vladikafdast'

-- #5
SELECT *
FROM Pokemon p
WHERE p.pok_height >
(SELECT AVG(pok_height) FROM Pokemon);

-- #6
SELECT p_id
FROM flightticketperson
WHERE price > 800
INTERSECT
SELECT p_id
FROM Person

SELECT snid 
FROM Airplane
WHERE capacity < 200
UNION
SELECT snid
FROM Flight
WHERE arrival_location = 'Denver'

SELECT p_id
FROM flightticketperson
WHERE price > 800
EXCEPT
SELECT p_id
FROM Person 
WHERE passenger_name LIKE 'Bo%'


SELECT *
FROM flightticketperson
WHERE price > 800
AND p_id IN (
    SELECT p_id
    FROM Person
)

SELECT snid 
FROM Airplane
WHERE capacity < 200 OR snid IN (
    SELECT snid
    FROM Flight
    WHERE arrival_location = 'Denver'
);

SELECT ftp.p_id
FROM flightticketperson ftp
WHERE ftp.price > 800 and ftp.p_id not in (SELECT p_id from person where passenger_name like 'Bo%'); 

-- #7
CREATE VIEW AirplaneView AS (
    SELECT *
    FROM airplane
    where capacity > 200
);

-- #8
-- Regular Nested Query using NOT IN
SELECT p_id 
FROM Person
WHERE p_id NOT IN ( 
    SELECT DISTINCT p_id
    FROM FlightTicketPerson
    WHERE flight_id IN (SELECT flight_id FROM Flight)
);

SELECT DISTINCT p1.p_id
FROM Person p1
WHERE NOT EXISTS (
    SELECT flight_id FROM Flight
    EXCEPT
    SELECT flight_id FROM FlightTicketPerson ftp
    WHERE ftp.p_id = p1.p_id
);

-- #9

-- Covering Query
SELECT
    a.snid AS airplane_id,
    p.snid AS private_jet_id,
    c.snid AS commercial_plane_id
FROM
    airplane a
LEFT JOIN
    PrivateJet p ON a.snid = p.snid
LEFT JOIN
    CommercialPlane c ON a.snid = c.snid;


-- Overlap Query
SELECT *
FROM
    privatejet p
INNER JOIN
    commercialplane c ON p.snid = c.snid



