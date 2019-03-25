DELETE FROM countries;
ALTER SEQUENCE countries_id_seq RESTART WITH 1;
INSERT INTO countries (country_code, name) VALUES ('us', 'United-States');
INSERT INTO countries (country_code, name) VALUES ('uk', 'United-Kingdom');
INSERT INTO countries (country_code, name) VALUES ('fr', 'France');
INSERT INTO countries (country_code, name) VALUES ('ca', 'Canada');
INSERT INTO countries (country_code, name) VALUES ('cn', 'China');

DELETE FROM languages;
ALTER SEQUENCE languages_id_seq RESTART WITH 1;
INSERT INTO languages (language_code, english_name) VALUES ('en', 'English');
INSERT INTO languages (language_code, english_name) VALUES ('fr', 'French');
INSERT INTO languages (language_code, english_name) VALUES ('es', 'Spanish');
INSERT INTO languages (language_code, english_name) VALUES ('de', 'German');
INSERT INTO languages (language_code, english_name) VALUES ('it', 'Italian');
INSERT INTO languages (language_code, english_name) VALUES ('cn', 'Chinese');


DELETE FROM genres;
ALTER SEQUENCE genres_id_seq RESTART WITH 1;
INSERT INTO genres (description) VALUES('Action');
INSERT INTO genres (description) VALUES('Drama');
INSERT INTO genres (description) VALUES('Adventure');
INSERT INTO genres (description) VALUES('Comedy');
INSERT INTO genres (description) VALUES('Crime');
INSERT INTO genres (description) VALUES('Drama');
INSERT INTO genres (description) VALUES('Fantasy');
INSERT INTO genres (description) VALUES('Horror');
INSERT INTO genres (description) VALUES('Romance');
INSERT INTO genres (description) VALUES('Sci-Fi');
INSERT INTO genres (description) VALUES('Thriller');

DELETE FROM directors;
ALTER SEQUENCE directors_id_seq RESTART WITH 1;
INSERT INTO directors (first_name, last_name) VALUES ('Steven', 'Spieldberg');
INSERT INTO directors (first_name, last_name) VALUES ('Martin', 'Scorsese');
INSERT INTO directors (first_name, last_name) VALUES ('Ridley', 'Scott');
INSERT INTO directors (first_name, last_name) VALUES ('John', 'Woo');
INSERT INTO directors (first_name, last_name) VALUES ('Christopher', 'Nolan');
INSERT INTO directors (first_name, last_name) VALUES ('Peter', 'Jackson');

DELETE FROM movies;
ALTER SEQUENCE movies_id_seq RESTART WITH 1;
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('Ready Player One', 'When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune.', 2018, 1, 1);
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('Silence', 'In the 17th century, two Portuguese Jesuit priests travel to Japan in an attempt to locate their mentor, who is rumored to have committed apostasy, and to propagate Catholicism.', 2016, 2, 1);
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('The Martian', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 2015, 3, 1);
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('Manhunt','Manhunt is an East-Asian police thriller film directed by John Woo and starring Zhang Hanyu and Masaharu Fukuyama.', 2017, 4, 5);
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('Interstallar','A team of explorers travel through a wormhole in space in an attempt to ensure humanity s survival.', 2014, 5, 1);
INSERT INTO movies (title, description, release_year, director_id, country_id) VALUES ('The Hobbit: The Desolation of Smaug','The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.', 2013, 6, 1);


DELETE FROM actors;
ALTER SEQUENCE actors_id_seq RESTART WITH 1;
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Adam','Driver', '', '1983-11-19', 'The role gained him attention, and he subsequently began a robust film career, appearing in small roles in J. Edgar (2011) and Lincoln (2012), supporting roles in Frances Ha (2012) and Inside Llewyn Davis (2013), and graduating to major parts in the comedy-drama This Is Where I Leave You (2014) and the upcoming Star Wars: Episode VII - The Force Awakens (2015) and Martin Scorsese s Silence (2016), the latter film opposite Andrew Garfield.', 1);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Math','Damon', '', '1970-10-08', 'Matthew Paige Damon was born on October 8, 1970, in Boston, Massachusetts, to Kent Damon, a stockbroker, realtor and tax preparer, and Nancy Carlsson-Paige, an early childhood education professor at Lesley University.', 1);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Zhang','Hanyu', '', '1964-12-19', 'Zhang became the first Chinese actors to win the "Grand Slam", winning Best Actor trophies from the Golden Horse Awards, Golden Rooster Awards, Hundred Flowers Awards and Huabiao Awards.', 5);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Matthew','McConaughey', '', '1969-11-04', 'American actor and producer Matthew David McConaughey was born in Uvalde, Texas', 1);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Martin','Freeman', '', '1971-09-08', 'Martin Freeman is an English actor, known for portraying Bilbo Baggins in Peter Jackson s The Hobbit film trilogy', 2);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Tye','Sheridan', '', '1996-11-11', 'Having been named one of Variety s 10 Actors to Watch, Tye Sheridan has emerged as one of Hollywood s most sought after young talents.', 1);
INSERT INTO actors (first_name, last_name, nickname, birth_date, bio, country_id) VALUES ('Jason','Momoa', '', '1979-08-01', 'Joseph Jason Namakaeha Momoa was born on August 1, 1979, in Honolulu, Hawaii.', 1);


DELETE FROM movie_genres;
ALTER SEQUENCE movie_genres_id_seq RESTART WITH 1;
INSERT INTO movie_genres (movie_id, genre_id) VALUES (1, 7);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (1, 11);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (2, 2);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (2, 3);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (3, 2);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (3, 3);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (3, 10);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (4, 1);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (4, 11);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (5, 2);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (5, 3);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (5, 10);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (6, 3);
INSERT INTO movie_genres (movie_id, genre_id) VALUES (6, 7);

DELETE FROM movie_languages;
ALTER SEQUENCE movie_languages_id_seq RESTART WITH 1;
INSERT INTO movie_languages (movie_id, language_id) VALUES (1,1);
INSERT INTO movie_languages (movie_id, language_id) VALUES (2,1);
INSERT INTO movie_languages (movie_id, language_id) VALUES (3,1);
INSERT INTO movie_languages (movie_id, language_id) VALUES (4,5);
INSERT INTO movie_languages (movie_id, language_id) VALUES (5,1);
INSERT INTO movie_languages (movie_id, language_id) VALUES (6,1);

DELETE FROM actor_movies;
ALTER SEQUENCE actor_movies_id_seq RESTART WITH 1;
INSERT INTO actor_movies (actor_id, movie_id) VALUES (1,2);
INSERT INTO actor_movies (actor_id, movie_id) VALUES (2,3);
INSERT INTO actor_movies (actor_id, movie_id) VALUES (3,4);
INSERT INTO actor_movies (actor_id, movie_id) VALUES (4,5);
INSERT INTO actor_movies (actor_id, movie_id) VALUES (5,6);
INSERT INTO actor_movies (actor_id, movie_id) VALUES (6,1);
