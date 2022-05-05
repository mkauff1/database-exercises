CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id) VALUES
                                        ('matt', 'matt@example.com', 2),
                                        ('james', 'james@example.com', 2),
                                        ('anthony', 'anthony@example.com', 2),
                                        ('ry', 'ry@example.com', NULL);

USE join_test_db;
SELECT u.name AS Name, r.name AS Role
FROM users AS u
JOIN roles AS r
ON u.role_id = r.id;

USE join_test_db;
SELECT u.name AS Name, r.name AS Role
FROM users AS u
         LEFT JOIN roles AS r
                   ON u.role_id = r.id;

USE join_test_db;
SELECT u.name AS Name, r.name AS Role
FROM users AS u
         RIGHT JOIN roles AS r
                   ON u.role_id = r.id;

USE join_test_db;
SELECT u.name AS Name, COUNT(u.name)
FROM users AS u
RIGHT JOIN roles AS r ON u.role_id = r.id
GROUP BY r.name;