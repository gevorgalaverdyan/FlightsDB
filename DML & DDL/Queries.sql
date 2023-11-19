SELECT p.id, p.passenger_name 
FROM Person AS p
WHERE p.passenger_name = 'Jay Patel'


SELECT t.class, COUNT(t.seat_num)
FROM Ticket AS t
GROUP BY t.class


SELECT a.max_speed, COUNT(a.SNID)
FROM Airplane AS a
GROUP BY a.max_speed
HAVING COUNT(*) > 1

