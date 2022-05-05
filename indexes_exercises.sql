USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE employees;

USE codeup_test_db;

ALTER TABLE albums
    ADD UNIQUE (artist, name);

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1999, 5.5, 'Pop')