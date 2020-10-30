const cassandra = require('cassandra-driver');
const assert = require('assert');
const hosts = require('../.env/config.cass.js');

const client = new cassandra.Client({
  contactPoints: [hosts],
  keyspace: 'test',
  localDataCenter: 'datacenter1',
});

const getInfo = (cb) => {
  const query = "SELECT * FROM subtest";
    client.execute(query, function (err, data) {
      if (err) {
        cb(err);
      } else {
        cb(data);
      }
  })
};

module.exports = { getInfo };

