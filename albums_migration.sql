USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
)

DESCRIBE albums;