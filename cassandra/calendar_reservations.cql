CREATE KEYSPACE calendar_reservations with replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

CREATE TABLE reservations_by_restaurant(
  restaurant_id int,
  reservation_id int,
  restaurant_name text,
  opening_time timestamp,
  closing_time timestamp,
  reservation_date text,
  reservation_time timestamp,
  first_name text,
  last_name text,
  email text,
  phone_number text,
  notes text,
  PRIMARY KEY (restaurant_id, reservation_id)
);
