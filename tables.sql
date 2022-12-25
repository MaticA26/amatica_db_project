CREATE TABLE IF NOT EXISTS platforme --DONE
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	categories VARCHAR(50) NOT NULL,
	earning_per_year FLOAT NOT NULL,
	nr_ussers INTEGER NOT NULL

);

SELECT * FROM platforme


CREATE TABLE IF NOT EXISTS sponsors --DONE
(
	id serial primary key not null,
	company_name VARCHAR (50) NOT NULL,
	typE_of VARCHAR(50) NOT NULL,
	central_basE VARCHAR(50) NOT NULL

);

SELECT * FROM sponsors

CREATE TABLE IF NOT EXISTS competitions --DONE
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	price_poll FLOAT NOT NULL,
	sponsors_id INTEGER NOT NULL, --FK
	last_winners VARCHAR(50) NOT NULL, 
	FOREIGN KEY (sponsors_id) REFERENCES sponsors

);

SELECT * FROM competitions


CREATE TABLE IF NOT EXISTS esport_organizations --DONE
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	player_name VARCHAR(50) NOT NULL,
	sponsors_id INTEGER NOT NULL, --FK
	total_earning FLOAT NOT NULL,
	tournaments_1st INTEGER NOT NULL,
	founded DATE NOT NULL,
	FOREIGN KEY (sponsors_id) REFERENCES sponsors

);

SELECT * FROM esport_organizations

CREATE TABLE IF NOT EXISTS games --DONE
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	type_of VARCHAR(50) NOT NULL,
	nr_ussers INTEGER NOT NULL,
	platforme_id INTEGER NOT NULL,
	FOREIGN KEY (platforme_id) REFERENCES platforme
);

SELECT * FROM games

CREATE TABLE IF NOT EXISTS ussers
(
	id serial primary key not null,
	type_of_player VARCHAR (50) NOT NULL,
	platforme_id integer NOT NULL,
	FOREIGN KEY (platforme_id) REFERENCES platforme
);

SELECT * FROM ussers


