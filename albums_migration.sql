USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        UNIQUE KEY (id),
                        artist VARCHAR(255),
                        name VARCHAR(255),
                        release_date INT,
                        genre VARCHAR(255),
                        sales FLOAT,
                        UNIQUE (artist, name)
);

show tables;
describe albums;
