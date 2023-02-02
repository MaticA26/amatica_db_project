OR REPLACE PROCEDURE addpro_gamers
(
player_name_p VARCHAR (50),
team_name_p  VARCHAR (50),
nationality_p VARCHAR (50),
age_p INTEGER,
games_id_p INTEGER,
total_earning_p DOUBLE PRECISION
) 
LANGUAGE plpgsql
AS
$$ 
BEGIN
INSERT INTO pro_gamers(player_name, team_name, nationality, age, games_id, total_earning) VALUES(player_name_p,team_name_p,nationality_p,age_p,games_id_p, total_earning_p);
END$$;

INSERT INTO pro_gamers(player_name, team_name, nationality, age,games_id, total_earning) VALUES('EliGe','Team Liquid','United States',25, 1, 1.1);

CALL addpro_gamers ('EliGe','Team Liquid','United States',25, 1,1.1);

----

CREATE OR REPLACE PROCEDURE DeleteFromCompetitions
(
name_p VARCHAR(50),
last_winners_p VARCHAR(50)
)

LANGUAGE plpgsql

AS
$$
BEGIN
DELETE FROM competitions
WHERE name != name_p AND last_winners != last_winners_p;

END
$$;


call DeleteFromCompetitions ('PUBG Mobile Global Championship','Comming Soon');

DELETE FROM competitions
WHERE name!= 'IEM Katowice' AND last_winners !='Unknow';

select * from competitions

----

