require('newrelic');
const express = require('express');

const bodyParser = require('body-parser');
const pool = require('../index.js');

const app = express();
const port = 3004;
const controllerHandler = require('./controller.js');

app.use(bodyParser.json());

app.get('/api/availability/:id', (req, res) => {
  // const id = parseInt(request.params.id);
  console.log(req);
  const q = 'select * from subtest2';
  // const values = [id];
  pool.query(q, (err, data) => {
    if (err) {
      res.status(400).send(err);
    } else {
      res.status(200).send(data);
    }
  });
});

app.post('/api/calendar', (req, res) => {
  const q = 'INSERT INTO subtest2 (name, age) values($1, $2)';
  const { name, age } = req.body;
  pool.query(q, [name, age], (err, data) => {
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
