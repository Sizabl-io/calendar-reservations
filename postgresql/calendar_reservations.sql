-- DROP DATABASE IF EXISTS calendar_reservations;

-- CREATE DATABASE calender_reservations;

\c calendar_reservations;

CREATE TABLE "reservations" (
  "reservation_id" SERIAL PRIMARY KEY,
  "reservation_month_id" integer,
  "reservation_day_id" integer,
  "reservation_times_id" integer,
  "availability" boolean,
  "restaurant_id" integer,
  "person_id" integer
);

CREATE TABLE "restaurant_info" (
  "restaurant_id" SERIAL PRIMARY KEY,
  "restaurant_name" text,
  "opening_time" time,
  "closing_time" time
);

CREATE TABLE "reservation_month" (
  "reservation_month_id" SERIAL PRIMARY KEY,
  "reservation_month_name" text,
  "current_year" integer
);

CREATE TABLE "person_info" (
  "person_id" SERIAL PRIMARY KEY,
  "first_name" varchar(100),
  "last_name" varchar(100),
  "email" varchar(100),
  "phone_number" varchar,
  "notes" text
);

CREATE TABLE "reservation_day" (
  "reservation_day_id" SERIAL PRIMARY KEY,
  "reservation_day" varchar(20)
);

CREATE TABLE "reservation_times" (
  "reservation_times_id" SERIAL PRIMARY KEY,
  "reservation_times" varchar
);

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_month_id") REFERENCES "reservation_month" ("reservation_month_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_day_id") REFERENCES "reservation_day" ("reservation_day_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("reservation_times_id") REFERENCES "reservation_times" ("reservation_times_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("restaurant_id") REFERENCES "restaurant_info" ("restaurant_id");

ALTER TABLE "reservations" ADD FOREIGN KEY ("person_id") REFERENCES "person_info" ("person_id");
