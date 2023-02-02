CREATE FUNCTION poor_pro_gamers (player_name VARCHAR,
								team_name VARCHAR,
								nationality VARCHAR,
								age INTEGER,
								games_id INTEGER,
								total_earning DOUBLE PRECISION)
								
		RETURNS VARCHAR
		LANGUAGE 'plpgsql'
		AS $body$
		DECLARE
		BEGIN
		INSERT INTO poor_pro_gamers(player_name,team_name, nationality,age, games_id, total_earning)
		VALUES (player, team, nationality, age, games_id, total_earning);
		RETURN 'insert successfully';
		END;
		$body$;
		
select poor_pro_gamers ('EliGe', 'Team Liquid', 'United States', 25 , 1, 1.1 );