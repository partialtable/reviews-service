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
-- Copy Command for CSV to rest
COPY reviews_service.restuarant (restuarant_name, number_of_reviews, food_overall_rating, service_overall_rating, ambiance_overall_rating, overall_rating, noise_level, one_star_percent, two_star_percent, three_star_percent, four_star_percent, five_star_percent, loved_for_array, filters_array) FROM '/Users/pepe/pepe/HR/SDC/reviews-service/RestaurantTable.csv' DELIMITERS ',' CSV header;
-- Copy command for CSV to users
COPY reviews_service.user (first_name, last_name, location, avatar_url) FROM '/Users/pepe/pepe/HR/SDC/reviews-service/UserTable.csv' DELIMITERS ',' CSV header;

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

