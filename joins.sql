
----INNER JOIN

SELECT * FROM platforme
INNER JOIN games
ON platforme.id=games.platforme_id;


----LEFT JOIN

SELECT * FROM platforme
LEFT JOIN games
ON platforme.id=games.platforme_id;

---RIGTH JOIN

SELECT * FROM platforme
RIGHT JOIN games
ON platforme.id=games.platforme_id;

---FULL JOIN

SELECT * FROM platforme
FULL JOIN games
ON platforme.id=games.platforme_id;

