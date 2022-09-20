CREATE TABLE users(user_id SERIAL PRIMARY KEY, user_name VARCHAR(30) UNIQUE NOT NULL);
CREATE TABLE games(games_id SERIAL PRIMARY KEY, user_id INT NOT NULL, number_of_guesses INT);
ALTER TABLE games ADD FOREIGN KEY (user_id) REFERENCES users(user_id);