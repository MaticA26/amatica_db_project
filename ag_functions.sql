SELECT AVG(age):: INTEGER MEDIE FROM pro_gamers;

SELECT COUNT(DISTINCT player_name) AS nr_player FROM pro_gamers;

SELECT MIN(age) AS min_age FROM pro_gamers;

SELECT MAX(age) AS max_age FROM pro_gamers;

SELECT SUM(age) AS total FROM pro_gamers;

SELECT SUM(age)/COUNT(*) AS total FROM pro_gamers;

SELECT AVG(age):: INTEGER AS avarage_age, COUNT(*) AS nr_of_pro_gamers,
			MIN(age) AS min_age, MAX(age) AS max_age, SUM(age) AS total
FROM pro_gamers;


SELECT COUNT(*) AS nr_of_pro_gamers FROM pro_gamers WHERE age<25 AND nationality='Ukraine';


SELECT nationality, COUNT (*) FROM pro_gamers 
	WHERE age>21
	GROUP BY nationality 
	HAVING COUNT(*)<3 AND nationality='Ukraine';
	
