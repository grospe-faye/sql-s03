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


