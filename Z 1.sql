INSERT INTO Genre (Genre_name)
	VALUES ('Metal'),('Hard Rock'),('Heavy Metal'),('Glam Metal'),('Rok'),
           ('Classic'),('Ballad'),('Instrumental'),('Disco'),('Pop'),('Rave'),
           ('Jazz'),('Folk'),('New-age'),('Popular');

INSERT INTO Executor (Executor_name)
	VALUES 	('Imagine Dragons'),('Coldplaу'),('Maroon-5'),('Rammstein'),('Muse'),('Twenty-one-pilots'),
            ('Metallica'),('Blackpink'),('Maneskin'),('Metallica'),('Megadeth'),('Ария'),
            ('SteelHeart'),('Bon Jovi'),('Doro'),('Мастер'),('Черный Обелиск');
			
INSERT INTO Genre_executor (Genre_id, Executor_id)
	VALUES (2, 9),(2, 5),(5, 3),(1, 3),(1, 6),(9, 1),(8, 2),
           (8, 4),(8, 1),(5, 9),(3, 5),(7, 2),(9, 7),(1, 4);
			
INSERT INTO Album (Album_name, Album_data)
	VALUES ('Born Pink', 2022),('So Far So Good', 2020),('Liebe ist für alle da', 2009),
           ('Supermassive Black Hole', 2006),('The Fourth World', 2004),('Book Lover Hits', 2019),
           ('Hymn for the Weekend', 2016),('Это пройдёт', 2020),('Rashl', 2020),('Master of Puppets', 2018),
           ('Killing Is My Business', 2020),('Герой асфальта', 2019),('Good 2b alive', 2021),('Have a Nice Day', 2005),
           ('Angels never die', 1992),('Песни мертвых', 1996),('Ещё один день', 2020);
           
INSERT INTO Album_executor (Executor_id, Album_id)
	VALUES (1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9);
	
INSERT INTO Track(Track_name, Album_id, Track_duration)
	VALUES ('Hard to Love', 5, 165),('The Happiest Girl', 6, 205),('The Fall', 1, 196),
           ('Time Bomb', 3, 203),('Rammlied', 1, 318),('Wiener Blut', 7, 232),('Supermassive Black Hole', 1, 209),
           ('The Real Reality in the Galaxy', 1, 402),('Human Independence Day, Pt. 1', 3, 237),('Believer', 1, 204),
           ('Hymn For The Weekend', 1, 258),('Нас догонит любовь', 3, 228),('Attends moi', 1, 226),('Тату', 7, 202),
           ('Bad Blood', 6, 250),('All I Want', 6, 225),('Have a nice day', 6, 229),('Wildflower', 5, 254),('LOL', 4, 243),
           ('Samurai', 4, 333),('Герой асфальта', 3, 314),('Улица роз', 3, 357),('Killing Is My Business…', 2, 186),('Rattlehead', 2, 221),
           ('Battery', 1, 186),('Orion', 2, 492),('мой', 1, 249),('My', 1, 249);
          
INSERT INTO Collection (Collection_name, Collection_data) 
	VALUES ('BLACKPINK — Born Pink', 2022),('The Chainsmokers', 2020),('Rammstein - Liebe ist für alle da', 2022),
           ('Supermassive Black Hole Twilight', 2006),('The 4th World', 2004),('Believer Piano Version', 2016),
           ('Порнофильмы — "Это пройдёт" (2020) ', 2020),('Hymn For The Weekend', 2019),('RashL - Live, Love, Dance', 2018),
           ('Heavy metal', 2018),('I', 2020),('Dont', 2019),('Care', 1999),('Some', 1943),('Collection', 1999),('Another', 2011),
           ('One', 2021);
          
INSERT INTO Track_Collection (Track_id, Collection_id) 
    VALUES (5, 2),(2, 9),(5, 13),(10, 5),(13, 6),(14, 5),(1, 7),(2, 8),(11, 5),(5, 7),
           (1, 5),(2, 7),(5, 6),(7, 2),(9, 3),(11, 4),(12, 5);
