DROP DATABASE IF EXISTS calendar_reservations;

CREATE DATABASE calender_reservations;

\c calendar_reservations;

CREATE TABLE "reservations" (
  "reservation_id" SERIAL PRIMARY KEY,
  "restaurant_id" integer,
  "reservation_date_id" integer,
  "reservation_times_id" integer,
  "user_id" integer,
  "number_of_guests" integer,
  "notes" text
);

CREATE TABLE "restaurant_info" (
  "restaurant_id" SERIAL PRIMARY KEY,
  "restaurant_name" text NOT NULL,
  "opening_time" time NOT NULL,
  "closing_time" time NOT NULL,
  "seating_capacity" integer NOT NULL
);

CREATE TABLE "user_info" (
  "user_id" SERIAL PRIMARY KEY,
  "username" varchar(100) NOT NULL,
  "first_name" varchar(100) NOT NULL,
  "last_name" varchar(100) NOT NULL,
  "email" varchar(100) NOT NULL,
  "phone_number" varchar NOT NULL
);

CREATE TABLE "reservation_date" (
  "reservation_date_id" SERIAL PRIMARY KEY,
  "reservation_date" DATE NOT NULL,
  "reservation_day" varchar(20) NOT NULL
);

CREATE TABLE "reservation_times" (
  "reservation_times_id" SERIAL PRIMARY KEY,
  "reservation_times" time NOT NULL
);

-- seed all restaurant data

\copy restaurant_info(restaurant_name, opening_time, closing_time, seating_capacity) FROM './CSV/restaurantInfo0.csv' CSV HEADER DELIMITER ','

\copy restaurant_info(restaurant_name, opening_time, closing_time, seating_capacity) FROM './CSV/restaurantInfo1.csv' CSV HEADER DELIMITER ','

\copy restaurant_info(restaurant_name, opening_time, closing_time, seating_capacity) FROM './CSV/restaurantInfo2.csv' CSV HEADER DELIMITER ','

\copy restaurant_info(restaurant_name, opening_time, closing_time, seating_capacity) FROM './CSV/restaurantInfo3.csv' CSV HEADER DELIMITER ','

\copy restaurant_info(restaurant_name, opening_time, closing_time, seating_capacity) FROM './CSV/restaurantInfo4.csv' CSV HEADER DELIMITER ','

-- seed all user data

\copy user_info(username, first_name, last_name, email, phone_number) FROM './CSV/userInfo0.csv' CSV HEADER DELIMITER ','

\copy user_info(username, first_name, last_name, email, phone_number) FROM './CSV/userInfo1.csv' CSV HEADER DELIMITER ','

\copy user_info(username, first_name, last_name, email, phone_number) FROM './CSV/userInfo2.csv' CSV HEADER DELIMITER ','

\copy user_info(username, first_name, last_name, email, phone_number) FROM './CSV/userInfo3.csv' CSV HEADER DELIMITER ','

\copy user_info(username, first_name, last_name, email, phone_number) FROM './CSV/userInfo4.csv' CSV HEADER DELIMITER ','

-- seed all date data

\copy reservation_date(reservation_date, reservation_day) FROM './CSV/dateInfo.csv' CSV HEADER DELIMITER ','

-- seed all times data

\copy reservation_times(reservation_times) FROM './CSV/timesInfo.csv' CSV HEADER DELIMITER ','

-- seed all reservations data

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo0.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo1.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo2.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo3.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo4.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo5.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo6.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo7.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo8.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo9.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo10.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo11.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo12.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo13.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo14.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo15.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo16.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo17.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo18.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo19.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo20.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo21.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo22.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo23.csv' CSV HEADER DELIMITER ','

\copy reservations(restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo24.csv' CSV HEADER DELIMITER ','

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_times_id") REFERENCES "reservation_times" ("reservation_times_id") ON DELETE CASCADE;

ALTER TABLE "reservations" ADD FOREIGN KEY ("restaurant_id") REFERENCES "restaurant_info" ("restaurant_id") ON DELETE CASCADE;

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_date_id") REFERENCES "reservation_date" ("reservation_date_id") ON DELETE CASCADE;

ALTER TABLE "reservations" ADD FOREIGN KEY ("user_id") REFERENCES "user_info" ("user_id") ON DELETE CASCADE;

CREATE INDEX idx_restaurant_id on reservations(restaurant_id);


