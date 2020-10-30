const fs = require('fs');
const csvWriter = require('csv-write-stream');
let faker = require('faker');

let numRecords = 15000000;
let numDocuments = 5;
let chunkSize = numRecords / numDocuments;

const reservationsGen = (start, end, index) => {
  let writer = csvWriter();
  writer.pipe(fs.createWriteStream(`./database/postgresql/CSV/reservationsInfo${index}.csv`));
  for (let i = start; i < end; i++) {
    writer.write({
      restaurant_id: Math.floor(Math.random() * (10000000 - 1 + 1) + 1),
      reservation_date_id: Math.floor(Math.random() * (90 - 1 + 1) + 1),
      reservation_times_id: Math.floor(Math.random() * (17 - 1 + 1) + 1),
      user_id: Math.floor(Math.random() * (10000000 - 1 + 1) + 1),
      number_of_guests: Math.floor(Math.random() * (6 - 1 + 1) + 1),
      notes: faker.lorem.sentence()
    })
  }
  writer.end();
  console.log('done');
}

    const reservationsFileGen = async() => {
      for (let i = 0; i < numDocuments; i++) {
        await reservationsGen(0, chunkSize, i);
      }
    };

reservationsFileGen();