-- DROP DATABASE IF EXISTS calendar_reservations;

-- CREATE DATABASE calender_reservations;

\c calendar_reservations;

CREATE TABLE "reservations" (
  "reservation_id" SERIAL PRIMARY KEY,
  "restaurant_id" integer NOT NULL,
  "reservation_year_id" integer NOT NULL,
  "reservation_month_id" integer NOT NULL,
  "reservation_day_id" integer NOT NULL,
  "reservation_date_id" integer NOT NULL,
  "reservation_times_id" integer NOT NULL,
  "availability" boolean NOT NULL,
  "person_id" integer
);

CREATE TABLE "restaurant_info" (
  "restaurant_id" SERIAL PRIMARY KEY,
  "restaurant_name" text NOT NULL,
  "opening_time" time NOT NULL,
  "closing_time" time NOT NULL
);

CREATE TABLE "reservation_month" (
  "reservation_month_id" SERIAL PRIMARY KEY,
  "reservation_month" varchar(20) NOT NULL
);

CREATE TABLE "reservation_year" (
  "reservation_year_id" SERIAL PRIMARY KEY,
  "reservation_year" integer NOT NULL
);

CREATE TABLE "person_info" (
  "person_id" SERIAL PRIMARY KEY,
  "first_name" varchar(100) NOT NULL,
  "last_name" varchar(100) NOT NULL,
  "email" varchar(100) NOT NULL,
  "phone_number" varchar NOT NULL,
  "notes" text
);

CREATE TABLE "reservation_day" (
  "reservation_day_id" SERIAL PRIMARY KEY,
  "reservation_day" varchar(20) NOT NULL
);

CREATE TABLE "reservation_date" (
  "reservation_date_id" SERIAL PRIMARY KEY,
  "reservation_date" integer NOT NULL
);

CREATE TABLE "reservation_times" (
  "reservation_times_id" SERIAL PRIMARY KEY,
  "reservation_times" time NOT NULL
);

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_month_id") REFERENCES "reservation_month" ("reservation_month_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_day_id") REFERENCES "reservation_day" ("reservation_day_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_times_id") REFERENCES "reservation_times" ("reservation_times_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("restaurant_id") REFERENCES "restaurant_info" ("restaurant_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_date_id") REFERENCES "reservation_date" ("reservation_date_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("person_id") REFERENCES "person_info" ("person_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_year_id") REFERENCES "reservation_year" ("reservation_year_id");
