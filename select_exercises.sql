USE codeup_test_db;

SELECT artist, name FROM albums;

SELECT artist, name FROM albums WHERE artist = 'Pink Floyd';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT name FROM albums WHERE release_date between '1990-01-01' and '1999-12-31';

SELECT name FROM albums WHERE sales < 20;

SELECT name FROM albums WHERE genre = "Hard rock" or genre = "Progressive rock";

