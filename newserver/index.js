const express = require('express');

const bodyParser = require('body-parser');
const pool = require('../postgresql/index.js');

const app = express();
const port = 3004;
const controllerHandler = require('./controller.js');

app.use(bodyParser.json());

app.get('/api/calendar', (req, res) => {
  const q = 'SELECT * FROM subtest2';
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
