-- inserting records
-- Command -> INSERT INTO tbl_name(column) VALUES ("col_value");

-- insert values in artists table
INSERT INTO artists(name) VALUES ("Rivermaya");
INSERT INTO artists(name) VALUES ("Psy");

-- insert values in albums table
-- MySQL Year format: YYYY-MM-DD
INSERT INTO albums(album_title, date_released, artist_id) VALUES ("Psy 6", "2012-1-1", 2);
INSERT INTO albums(album_title, date_released, artist_id) VALUES ("Trip", "1996-1-1", 1);

-- insert values in songs table
INSERT INTO songs(song_name, length, genre, album_id) VALUES ("Gangnam Style", 253, "K-POP", 1);
INSERT INTO songs(song_name, length, genre, album_id) VALUES ("Kundiman", 234, "OPM", 2);
INSERT INTO songs(song_name, length, genre, album_id) VALUES ("Kisapmata", 279, "OPM", 2);

-- selecting records 
-- display the title and genre of all the songs
SELECT song_name, genre FROM songs;

-- display all columns in the songs table
SELECT * FROM songs;

-- display the title of all OPM songs
SELECT song_name FROM songs WHERE genre = "OPM";

-- we can use AND and OR keyword for multiple expressions in the WHERE clause.

-- Display the title and length of the OPM songs that are more than 2 minutes
SELECT song_name, length FROM songs WHERE length > 200 AND genre = "OPM";

-- update the length of Kundiman to 240 seconds


