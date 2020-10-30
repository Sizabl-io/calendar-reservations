const express = require('express')
const app = express()
const port = 3000
const db = require('../cassandra/index.js');

app.get('/api/calendar', (req, res) => {
  db.getInfo((err, data) => {
    if (err) {
      res.status(400).send(err)
    } else {
      res.status(200).send(data)
    };
  });
  // const query = "SELECT * FROM subtest";
  // db.execute(query, (err, data) => {
  //   if (err) {
  //     res.status(400).send(err)
  //   } else {
  //     res.status(200).send(data)
  //   };
  // });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});

