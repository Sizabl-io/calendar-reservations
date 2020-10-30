const { Pool } = require('pg');

const pool = new Pool({
  // user: 'awuradjoaquansah',
  // password: 'postgres',
  // host: 'localhost',
  // port: 5432,
  // database: 'calendar_reservations',
  user: 'postgres',
  password: 'postgres',
  host: 'ec2-13-52-251-140.us-west-1.compute.amazonaws.com',
  port: 5432,
  database: 'calendar_reservations',
});

// pool.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results.rows[0].solution);
// });

module.exports = pool;
