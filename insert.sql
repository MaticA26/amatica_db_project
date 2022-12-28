INSERT INTO platforme (name, categories, earning_per_year,nr_ussers)VALUES
					('Steam','All',3.1, 120 ),
					('EpicGames','All',6.27,58),
					('RiotGames','Strategy,Shoters,GameBoard',218,180);
					
INSERT INTO sponsors(company_name, type_of, central_base)VALUES
					('Monster Energy','Energy Drink','Corona, California'),
					('Honda','Automotive','Hamamatsu, Japan'),
					('Twitch','Streaming Platform', 'San Francisco'),
					('Kingston','Tehnology','Fountain Valley, California'),
					('BMW','Automitive','Muchen, Germany'),
					('Crypto.com','Trading Platform','Singapore'),
					('Loreal','Beauty Company','Clichy, France'),
					('Nissan','Automotive','Yokohama, Japan'),
					('Puma','Sportive Articles','Herzogenaurach, Germany'),
					('Redbull','Energy Drink','Fuschl am See, Austria'),
					('Hp','Tehnology','Palo Alto, California');

INSERT INTO esport_organizations (name,player_name, total_earning,tournaments_played,founded) VALUES
					('Fnatic','pow3r',18.93,419,'2004-07-23'),
					('Natus Vincere','s1mple',19.98,532,'2009-12-17'),
					('Cloud9','forsen',12.56,43,'2013-01-01'),
					('G2 Esports','jelty',11.56,457,'2015-10-15'),
					('Team Liquid','rakin',42.98,1061,'2000-05-01');

insert into games (name, type_of,nr_ussers,platforme_id) values                
				('Counter Strike','Shooter',617676.7,1),
				('Valorant','Shooter',16425051,3),
				('League of Legends','PVP',48505980,3),
				('Dota2','PVP',467155.1,1),
				('Rocket League','PVP',90905401,2),
				('FIFA','Soccer',27045,2);


insert into pro_gamers (player_name,team_name,nationality,games_id,age,total_earning) values
					('Nisha','Team Liquid','Poland',5,22,2.28),
					('Naf','Team Liquid','Canada',2,25,1.18),
					('REKKLES','Fnatic','Sweden',5,26,0.45),
					('RoeJ','Fnatic','Denmark',2,29,0.26),
					('s1mple','Natus Vincere','Ukraine',2,25,1.68),
					('V-Tune','Natus Vincere','Ukraine',5,22,0.11),
					('Blaber','Cloud9','US',4,22,0.2),
					('Hobbit','Cloud9','Kazakhstan',2,28,0.77),
					('Caps','G2 Esports','Denmark',4,23,0.51),
					('ShahZam','G2 Esports','US',3,29,0.25);



insert into competitions (name, price_poll, last_winners) values
						('Rio Major',1.2,'Faze Clan'),
						('World Championship',2.25,'DRX'),
						('The International',18.93,'Tundra Esports'),
						('PUBG Mobile Global Championship',4,'Comming Soon'),
						('PGL Major Antwerp',1,'Faze Clan');


insert into ussers (type_of_player, platforme_id) values
				('Amateur',1),
				('Semi-pro',1),
				('Pro-player',1),
				('Amateur',2),
				('Semi-pro',2),
				('Pro_player',2),
				('Amateur',3),
				('Semi_pro',3),
				('Pro-player',3);




