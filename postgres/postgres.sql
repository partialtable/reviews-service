CREATE SCHEMA reviews_service;

CREATE TABLE reviews_service.restuarant (
  restuarant_id SERIAL PRIMARY KEY,
  restuarant_name TINYTEXT,
  number_of_reviews INTEGER,
  food_overall_rating DECIMAL,
  service_overall_rating DECIMAL,
  ambiance_overall_rating DECIMAL,
  overall_rating DECIMAL,
  noise_level varchar(16),
  one_star_percent DECIMAL,
  two_star_percent DECIMAL,
  three_star_percent DECIMAL,
  four_star_percent DECIMAL,
  five_star_percent DECIMAL,
  loved_for_array varchar(10) [],
  filters_array varchar(10) []
);

CREATE TABLE reviews_service.user (
  user_id SERIAL PRIMARY KEY,
  first_name varchar(25),
  last_name varchar(25),
  location varchar(100),
  avatar_url TINYTEXT
);

CREATE TABLE reviews_service.reviews (
  restuarant_id INTEGER REFERENCES NOT NULL reviews_service.restuarant (restuarant_id),
  user_id INTEGER REFERENCES NOT NULL reviews_service.user (user_id),
  review_id SERIAL PRIMARY KEY,
  create_date varchar(50),
  description TEXT,
  rating_food DECIMAL,
  rating_service DECIMAL,
  rating_ambience DECIMAL,
  rating_overall DECIMAL,
  noise_level varchar(16),
  would_recommend varchar(5)
);
