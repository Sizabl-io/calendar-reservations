const { Pool } = require('pg');

const pool = new Pool({
  user: 'awuradjoaquansah',
  password: 'postgres',
  host: 'localhost',
  port: 5432,
  database: 'test',
});

module.exports = pool;
