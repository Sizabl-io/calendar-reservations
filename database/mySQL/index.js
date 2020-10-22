const mysql = require('mysql');
const mySQL = require('../.env/config.js');

const connection = mysql.createConnection({
  host: mySQL.host,
  user: mySQL.user,
  password: mySQL.password,
  database: mySQL.database,
});

connection.connect((err) => {
  if (err) {
    console.log(err);
  } else {
    console.log('Successful connection to database :)');
  }
});

module.exports = connection;
