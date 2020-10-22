DROP KEYSPACE IF EXISTS calendar;

CREATE KEYSPACE calendar with replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

CREATE TABLE calendar.reservations_by_restaurant(
  restaurant_id int,
  reservation_id int,
  reservation_date date,
  reservation_day text,
  reservation_time time,
  user_id int,
  number_of_guests int,
  notes text,
  PRIMARY KEY (restaurant_id, reservation_date, reservation_time)
);

CREATE TABLE calendar.restaurant_info(
  restaurant_id int,
  restaurantName text,
  openingTime time,
  closingTime time,
  seatingCapacity int,
  PRIMARY KEY(restaurant_id)
);

CREATE TABLE calendar.user_info(
  user_id int,
  username text,
  first_name text,
  last_name text,
  email text,
  phone_number text,
  PRIMARY KEY(user_id)
);

-- CREATE TABLE calendar.reservations_by_user(
--   user_id int,
--   reservation_id int,
--   restaurant_id int,
--   restaurant_name text,
--   reservation_date text,
--   reservation_time timestamp,
--   username text,
--   first_name text,
--   last_name text,
--   email text,
--   phone_number text,
--   notes text,
--   PRIMARY KEY(user_id, reservation_date, reservation_time)
-- );

-- restaurant data
COPY calendar.restaurant_info(restaurant_id, restaurantName, openingTime, closingTime, seatingCapacity) FROM './CSV/restaurantInfo0.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.restaurant_info(restaurant_id, restaurantName, openingTime, closingTime, seatingCapacity) FROM './CSV/restaurantInfo1.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.restaurant_info(restaurant_id, restaurantName, openingTime, closingTime, seatingCapacity) FROM './CSV/restaurantInfo2.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.restaurant_info(restaurant_id, restaurantName, openingTime, closingTime, seatingCapacity) FROM './CSV/restaurantInfo3.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.restaurant_info(restaurant_id, restaurantName, openingTime, closingTime, seatingCapacity) FROM './CSV/restaurantInfo4.csv' WITH HEADER=true AND DELIMITER=',';

-- user data

COPY calendar.user_info(user_id, username, first_name, last_name, email, phone_number) FROM './CSV/userInfo0.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.user_info(user_id, username, first_name, last_name, email, phone_number) FROM './CSV/userInfo1.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.user_info(user_id, username, first_name, last_name, email, phone_number) FROM './CSV/userInfo2.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.user_info(user_id, username, first_name, last_name, email, phone_number) FROM './CSV/userInfo3.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.user_info(user_id, username, first_name, last_name, email, phone_number) FROM './CSV/userInfo4.csv' WITH HEADER=true AND DELIMITER=',';

-- reservations data

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo0.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo1.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo2.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo3.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo4.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo5.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo6.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo7.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo8.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo9.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo10.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo11.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo12.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo13.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo14.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo15.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo16.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo17.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo18.csv' WITH HEADER=true AND DELIMITER=',';

COPY calendar.reservations_by_restaurant(restaurant_id, reservation_id, reservation_date, reservation_day, reservation_time, user_id, number_of_guests, notes) FROM './CSV/reservationsInfo19.csv' WITH HEADER=true AND DELIMITER=',';






