CREATE KEYSPACE calendar_reservations with replication = {'class': 'SimpleStrategy', 'replication_factor': 2};

CREATE TYPE calendar_reservations.restaurant_info (
  restaurant_name text,
  opening_time timestamp,
  closing_time timestamp
);

CREATE TYPE calendar_reservations.person_info (
  first_name text,
  last_name text,
  email text,
  phone_number text,
  notes text
)

CREATE TABLE reservations (
  reservation_id int PRIMARY KEY,
  restaurant FROZEN <restaurant_info>,
  reservation_year int,
  reservation_month text,
  reservation_day text,
  reservation_date int,
  reservation_times timestamp,
  availability boolean,
  person FROZEN <person_info>
)