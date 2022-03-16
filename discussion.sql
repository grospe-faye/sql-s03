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
INSERT INTO songs(song_name, length, genre, album_id) VALUES ("Gangnam Style", 253, "K-POP", 4);