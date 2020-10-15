CREATE SCHEMA reviews_service;

CREATE TABLE reviews_service.restuarant (
  restuarant_id SERIAL PRIMARY KEY,
  restuarant_name TEXT,
  number_of_reviews INTEGER,
  food_overall_rating DECIMAL,
  service_overall_rating DECIMAL,
  ambiance_overall_rating DECIMAL,
  overall_rating DECIMAL,
  noise_level TEXT,
  one_star_percent DECIMAL,
  two_star_percent DECIMAL,
  three_star_percent DECIMAL,
  four_star_percent DECIMAL,
  five_star_percent DECIMAL,
  loved_for_array TEXT [],
  filters_array TEXT []
);

CREATE TABLE reviews_service.test (
  restuarant_id SERIAL PRIMARY KEY,
  restuarant_name TEXT,
  number_of_reviews INTEGER,
  food_overall_rating DECIMAL
);

CREATE TABLE reviews_service.user (
  user_id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  location TEXT,
  avatar_url TEXT
);

CREATE TABLE reviews_service.reviews (
  restuarant_id INTEGER REFERENCES reviews_service.restuarant (restuarant_id),
  user_id INTEGER REFERENCES reviews_service.user (user_id),
  review_id SERIAL PRIMARY KEY,
  create_date TEXT,
  description TEXT,
  rating_food INTEGER,
  rating_service INTEGER,
  rating_ambience INTEGER,
  rating_overall INTEGER,
  noise_level TEXT,
  would_recommend TEXT
);

