create database bookMyShow_DB_Design;

-- Creating Theatre Table
CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100)
);

-- Creating Screen Table
CREATE TABLE Screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT,
    screen_name VARCHAR(50),
    FOREIGN KEY (theatre_id)
        REFERENCES Theatre (theatre_id)
);

-- Creating Movie Table
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    language VARCHAR(50),
    duration INT,
    genre VARCHAR(50)
);

-- Creating Show Table
CREATE TABLE Shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    show_date DATE,
    start_time TIME,
    end_time TIME,
    FOREIGN KEY (movie_id)
        REFERENCES Movie (movie_id),
    FOREIGN KEY (screen_id)
        REFERENCES Screen (screen_id)
);