const fs = require('fs');

const csvWriter = require('csv-write-stream');
let faker = require('faker');
let dates = require('./reservationDateInfoGen.js');
let times = require('./reservationTimesInfoGen.js');

let numRecords = 15000000;
let numDocuments = 5;
let chunkSize = numRecords / numDocuments;

let reservationId = 45000000;


const reservationsGen = (start, end, index) => {
  let writer = csvWriter();
  writer.pipe(fs.createWriteStream(`./database/cassandra/CSV/reservationsInfo${index}.csv`));
  for (let i = start; i < end; i++) {
    let datePicker = Math.floor(Math.random() * (89 - 0 + 1) + 0);
    writer.write({
      restaurant_id: Math.floor(Math.random() * (10000000 - 1 + 1) + 1),
      reservation_id: reservationId++,
      reservation_date: dates[datePicker][0],
      reservation_day: dates[datePicker][1],
      reservation_time: times[Math.floor(Math.random() * (15 - 0 + 1) + 0)],
      user_id: Math.floor(Math.random() * (10000000 - 1 + 1) + 1),
      number_of_guests: Math.floor(Math.random() * (6 - 1 + 1) + 1),
      notes: faker.lorem.sentence()
    })
  }
  writer.end();
  console.log('done');
}

const reservationsFileGen = async() => {
  for (let i = 15; i < numDocuments * 4; i++) {
    await reservationsGen(0, chunkSize, i)
  }
}

reservationsFileGen();