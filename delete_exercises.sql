USE codeup_test_db;

DELETE
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

DELETE
FROM albums
WHERE genre = 'Disco';

DELETE
FROM albums
WHERE artist = 'Whitney Houston';

describe albums;
select * from albums;

