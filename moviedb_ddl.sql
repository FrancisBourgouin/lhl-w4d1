DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS languages CASCADE;
DROP TABLE IF EXISTS movie_languages CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS actors CASCADE;
DROP TABLE IF EXISTS actor_languages CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS actor_genres CASCADE;
DROP TABLE IF EXISTS actor_movies CASCADE;
DROP TABLE IF EXISTS movie_genres CASCADE;
DROP TABLE IF EXISTS countries CASCADE;
DROP TABLE IF EXISTS actor_countries CASCADE;
DROP TABLE IF EXISTS movie_countries CASCADE;

-- CREATE TABLES

CREATE TABLE languages (id SERIAL PRIMARY KEY NOT NULL, english_name VARCHAR(50), language_code VARCHAR(2));
CREATE TABLE countries (id SERIAL PRIMARY KEY NOT NULL, country_code VARCHAR(2), name VARCHAR(250));
CREATE TABLE genres (id SERIAL PRIMARY KEY NOT NULL, description VARCHAR(50));
CREATE TABLE directors (id SERIAL PRIMARY KEY NOT NULL, first_name VARCHAR(50), last_name VARCHAR(50));


CREATE TABLE movies (
  id SERIAL PRIMARY KEY NOT NULL, 
  title VARCHAR(250), 
  description TEXT, 
  release_year INTEGER,
  director_id INTEGER,
  country_id INTEGER, 
  FOREIGN KEY (director_id) REFERENCES directors(id) ON DELETE CASCADE,
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE CASCADE
  );

CREATE TABLE actors (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  nickname VARCHAR(50),
  birth_date DATE,
  bio TEXT,
  country_id INTEGER,
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE CASCADE
);

CREATE TABLE movie_languages (
  id SERIAL PRIMARY KEY NOT NULL, 
  language_id INTEGER,
  movie_id INTEGER,
  FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
  );

CREATE TABLE actor_languages (
  id SERIAL PRIMARY KEY NOT NULL, 
  actor_id INTEGER,
  language_id INTEGER,
  FOREIGN KEY (actor_id) REFERENCES actors(id) ON DELETE CASCADE,
  FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
  );

CREATE TABLE actor_movies (
  id SERIAL PRIMARY KEY NOT NULL, 
  actor_id INTEGER,
  movie_id INTEGER,
  FOREIGN KEY (actor_id) REFERENCES actors(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
  );

CREATE TABLE movie_genres (
  id SERIAL PRIMARY KEY NOT NULL, 
  genre_id INTEGER,
  movie_id INTEGER,
  FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE
  ); 


