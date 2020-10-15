CREATE SCHEMA reviews_service;

CREATE TABLE reviews_service.restuarant (
  restuarant_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  restuarant_name TEXT UNIQUE,
  number_of_reviews INTEGER,
  food_overall_rating INTEGER,
  service_overall_rating INTEGER,
  ambiance_overall_rating INTEGER,
  overall_rating INTEGER,
  noise_level TEXT,
  one_star_percent INTEGER,
  two_star_percent INTEGER,
  three_star_percent INTEGER,
  four_star_percent INTEGER,
  five_star_percent INTEGER,
  loved_for_array TEXT [],
  filters_array TEXT []
)

CREATE TABLE reviews_service.user (
  user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  first_name TEXT,
  last_name TEXT,
  location TEXT,
  avatar_url TEXT
)

CREATE TABLE reviews_service.reviews (
  restuarant_id INTEGER REFERENCES reviews_service.restuarant (restuarant_id),
  user_id INTEGER REFERENCES reviews_service.users (user_id),
  review_id INTEGER UNIQUE,
  create_date TEXT,
  description TEXT,
  rating_food INTEGER,
  rating_service INTEGER,
  rating_ambience INTEGER,
  rating_overall INTEGER,
  noise_level TEXT,
  would_recommend TEXT
)

