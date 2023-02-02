CREATE TABLE best_teams AS
SELECT * FROM esport_organizations;

DELETE FROM best_teams;

ALTER TABLE best_teams DROP COLUMN changed_on;

ALTER TABLE best_teams ADD COLUMN changed_on TIMESTAMP;

SELECT * FROM best_teams;


CREATE OR REPLACE FUNCTION best_teams_changes()

	RETURNS TRIGGER

	LANGUAGE plpgsql
	AS
	$$
	BEGIN

	IF OLD.name <> NEW.name THEN 
		INSERT INTO best_teams (id,name, player_name, total_earning, tournaments_played, founded, sponsors, changed_on)
		VALUES (OLD.id, OLD.name, OLD.player_name, OLD.total_earning, OLD.tournaments_played, OLD.founded, OLD.sponsors, NOW());

	END IF;
	RETURN NEW;
	END
$$;

CREATE TRIGGER change_detection 
BEFORE UPDATE 
ON esport_organizations
FOR EACH ROW 
EXECUTE PROCEDURE best_teams_changes();

SELECT * FROM best_teams;


CREATE OR REPLACE FUNCTION best_teams_changes()

	RETURNS TRIGGER

	LANGUAGE plpgsql
	AS
	$$
	BEGIN

		INSERT INTO best_teams(id,name, player_name, total_earning, tournaments_played, founded, sponsors, changed_on)
		VALUES (OLD.id, OLD.name, OLD.player_name, OLD.total_earning, OLD.tournaments_played, OLD.founded, OLD.sponsors, NOW());

	RETURN NEW;
	END
$$;


update best_teams set name ='my new best team' where id=3;

select * from best_teams