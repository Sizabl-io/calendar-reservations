require('newrelic');
const express = require('express');

const bodyParser = require('body-parser');
const pool = require('../index.js');

const app = express();
const port = 3004;
const controllerHandler = require('./controller.js');

app.use(bodyParser.json());

app.get('/api/restaurant/:restaurantId/availability', (req, res) => {
  const {restaurantId} = req.params;
  const q = 'select reservation_id, reservations.restaurant_id, restaurant_name, opening_time, closing_time, seating_capacity, reservations.reservation_date_id, reservation_date, reservation_day, reservations.reservation_times_id, reservation_times, user_id, number_of_guests, notes from reservations inner join restaurant_info on reservations.restaurant_id = restaurant_info.restaurant_id inner join reservation_date on reservations.reservation_date_id = reservation_date.reservation_date_id inner join reservation_times on reservations.reservation_times_id = reservation_times.reservation_times_id where reservations.restaurant_id = $1';
  pool.query(q, [restaurantId], (err, data) => {
    if (err) {
      res.status(400).send(err);
    } else {
      res.status(200).send(data.rows);
    }
  });
});

app.post('/api/restaurant/:restaurantId/availability', (req, res) => {
  const q = 'INSERT INTO reservations (restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes) values($1, $2, $3, $4, $5, $6)';
  const { restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes } = req.body;
  pool.query(q, [restaurant_id, reservation_date_id, reservation_times_id, user_id, number_of_guests, notes], (err, data) => {
    if (err) {
      res.status(400).send(err);
    } else {
      res.status(201).send();
    }
  });
});

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Example app listening at http://localhost:${port}`);
});
