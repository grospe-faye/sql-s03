-- Creation of database
CREATE DATABASE blog_db;

-- Create posts table
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(300) NOT NULL,
    datetime_created DATETIME NOT NULL
    PRIMARY KEY (id)  
);
