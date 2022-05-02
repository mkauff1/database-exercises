USE codeup_test_db;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1983, 'Pop, post-disco, funk, rock', 50.2),
       ('AC/DC', 'Back in Black', 1980, 'Hard rock', 29.5),
       ('Whitney Houston', 'The Bodyguard', 1992, 'R&B, soul, pop', 32.4),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, glam rock, progressive rock', 21.7),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Country rock, soft rock, folk rock', 41.2),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', 24.4),
       ('Eagles', 'Hotel California', 1976, 'Soft rock', 31.5),
       ('Bee Gees',	'Saturday Night Fever', 1977, 'Disco', 21.6),
       ('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', 27.9),
       ('Shania Twain', 'Come On Over', 1997, 'Country, pop', 29.6);

SHOW TABLES;

DESCRIBE albums;

SELECT * FROM albums;