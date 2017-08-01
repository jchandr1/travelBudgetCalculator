DROP DATABASE IF EXISTS budget;

CREATE DATABASE budget;

USE budget;

DROP TABLE IF EXISTS expenses;
DROP TABLE IF EXISTS funds;
DROP TABLE IF EXISTS users;

CREATE TABLE expenses (
  id INT AUTO_INCREMENT,
  name VARCHAR(50),
  cost INT,
  currency VARCHAR(3),
  USDVal INT,
  user_id INT,
  INDEX user_ind (user_id),
  FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE
  PRIMARY KEY (id)
);

CREATE TABLE fundsLeft (
  id INT AUTO_INCREMENT,
  amt INT,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50)
);

INSERT INTO users (username, password) VALUE ("justin", "justin");