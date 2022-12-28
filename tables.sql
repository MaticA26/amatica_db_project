CREATE TABLE IF NOT EXISTS platforme 
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	categories VARCHAR(50) NOT NULL,
	earning_per_year FLOAT NOT NULL,
	nr_ussers INTEGER 
);



CREATE TABLE IF NOT EXISTS sponsors
(
	id serial primary key not null,
	company_name VARCHAR (50) NOT NULL,
	typE_of VARCHAR(50) NOT NULL,
	central_basE VARCHAR(50) NOT NULL

);



CREATE TABLE IF NOT EXISTS competitions 
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	price_poll FLOAT NOT NULL,
	sponsors_id INTEGER NOT NULL, 
	last_winners VARCHAR(50) NOT NULL, 
	FOREIGN KEY (sponsors_id) REFERENCES sponsors

);




CREATE TABLE IF NOT EXISTS esport_organizations 
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	player_name VARCHAR(50) NOT NULL,
	total_earning FLOAT NOT NULL,
	tournaments_played INTEGER NOT NULL,
	founded DATE NOT NULL

);


CREATE TABLE IF NOT EXISTS games 
(
	id serial primary key not null,
	name VARCHAR (50) NOT NULL,
	type_of VARCHAR(50) NOT NULL,
	nr_ussers INTEGER NOT NULL,
	platforme_id INTEGER NOT NULL,
	FOREIGN KEY (platforme_id) REFERENCES platforme
);


CREATE TABLE IF NOT EXISTS ussers
(
	id serial primary key not null,
	type_of_player VARCHAR (50) NOT NULL,
	platforme_id integer NOT NULL,
	FOREIGN KEY (platforme_id) REFERENCES platforme
);



CREATE TABLE IF NOT EXISTS pro_gamers
(
	id serial primary key not null,
	player_name VARCHAR (50) NOT NULL,
	team_name VARCHAR(50) NOT NULL,
	nationality VARCHAR(50) NOT NULL,
	age INTEGER NOT NULL,
	games_id INTEGER NOT NULL,
	total_earning FLOAT NOT NULL,
	FOREIGN KEY (games_id) REFERENCES games
);



CREATE TABLE IF NOT EXISTS players_org
(
	id serial primary key not null,
	pro_gamers_id INTEGER NOT NULL,
	esport_organizations_id INTEGER NOT NULL,
	FOREIGN KEY (pro_gamers_id) REFERENCES pro_gamers,
	FOREIGN KEY (esport_organizations_id) REFERENCES esport_organizations
	
);



CREATE TABLE IF NOT EXISTS sponsors_per_org
(
	id serial primary key not null,
	sponsors_id INTEGER NOT NULL,
	esport_organizations_id INTEGER NOT NULL,
	FOREIGN KEY (sponsors_id) REFERENCES sponsors,
	FOREIGN KEY (esport_organizations_id) REFERENCES esport_organizations
	
);



