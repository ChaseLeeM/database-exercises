use codeup_test_db;

drop table if exists albums;

    create table albums (

        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(128),
        name VARCHAR(128),
        release_date INT UNSIGNED,
        sales FLOAT,
        genre VARCHAR(128),
        PRIMARY KEY (id)
    );