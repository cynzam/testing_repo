-- Create the database
CREATE DATABASE IF NOT EXISTS movie_database;
USE movie_database;

-- Create the Directors table
CREATE TABLE Directors (
    DirectorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Create the Movies table
CREATE TABLE Movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT,
    DirectorID INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);
