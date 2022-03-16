-- Creation of database
CREATE DATABASE blog_db;

-- Create users table
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL,
    datetime_created DATETIME NOT NULL,
    PRIMARY KEY (id)  
);

-- Create posts table
CREATE TABLE posts (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(500) NOT NULL,
    content VARCHAR(5000) NOT NULL,
    datetime_posted DATETIME NOT NULL,
    user_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_posts_user_id
    	FOREIGN KEY (user_id) REFERENCES users(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT
);

-- Create posts_likes table
CREATE TABLE posts_likes ( 
	id INT NOT NULL AUTO_INCREMENT, 
	datetime_liked DATETIME NOT NULL,
	post_id INT NOT NULL,
    user_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_posts_likes_post_id
    	FOREIGN KEY (post_id) REFERENCES posts(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT,
    CONSTRAINT fk_posts_likes_user_id
    	FOREIGN KEY (user_id) REFERENCES users(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT    
);

-- Create posts_comments table
CREATE TABLE posts_comments ( 
	id INT NOT NULL AUTO_INCREMENT, 
	content VARCHAR(5000) NOT NULL,
	datetime_commented DATETIME NOT NULL,
	post_id INT NOT NULL,
    user_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_posts_comments_post_id
    	FOREIGN KEY (post_id) REFERENCES posts(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT,
    CONSTRAINT fk_posts_comments_user_id
    	FOREIGN KEY (user_id) REFERENCES users(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT    
);

-- insert values in users table
INSERT INTO users(email, password, datetime_created) VALUES ("johnsmmith@gmail.com", "passwordA", "2021-1-1 01:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("juandelacruz@gmail.com", "passwordB", "2021-1-1 02:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("janesmmith@gmail.com", "passwordC", "2021-1-1 03:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("mariadelacruz@gmail.com", "passwordD", "2021-1-1 04:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("johndoe@gmail.com", "passwordE", "2021-1-1 05:00:00");

-- insert values in posts table
INSERT INTO posts(user_id, title, content, datetime_posted) VALUES ( 1, "First Code", "Hello World!", "2021-1-2 01:00:00");
INSERT INTO posts(user_id, title, content, datetime_posted) VALUES ( 1, "Second Code", "Hello Earth!", "2021-1-2 02:00:00");
INSERT INTO posts(user_id, title, content, datetime_posted) VALUES ( 2, "Third Code", "Welcome to Mars!", "2021-1-2 03:00:00");
INSERT INTO posts(user_id, title, content, datetime_posted) VALUES ( 4, "Fourth Code", "Bye bye solar system!", "2021-1-2 04:00:00");

-- Get all the title with a user ID of 1
SELECT title FROM posts WHERE user_id = 1;

-- Get all user's email and datetime of creation
SELECT email, datetime_created FROM users;

-- Update a post's content to "Hello to the people of the Earth!" where its initial content is "Hello Earth" by using the record's ID
UPDATE posts SET content = "Hello to the people of the Earth!" WHERE id = 2;

-- Delete the user with an email of "johndoe@gmail.com"
DELETE FROM users WHERE email = "johndoe@gmail.com";