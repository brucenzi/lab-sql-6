use sakila;

-- creating table "films_2020"

drop table if exists films_2020;

CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;


-- 1. Add the new films to the database.

	-- I used "data import wizard" to import the data from the csv file to the table films_2020
	-- clicking on the table "films_2020", selecting the option "Table Data Import Wizard" and following the steps

select * from films_2020;

-- 2. Update information on rental_duration, rental_rate, and replacement_cost.
	-- I had to disable the "safe mode" in "preferences" and reconnect mysql (close and reopen)

update films_2020 
set rental_duration = 3,
rental_rate = 2.99,
replacement_cost = 8.99;

select * from films_2020;