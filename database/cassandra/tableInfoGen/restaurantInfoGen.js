const fs = require('fs');
const csvWriter = require('csv-write-stream');
let faker = require('faker');

let numRecords = 10000000;
let numDocuments = 5;
let chunkSize = numRecords / numDocuments;
let restaurantId = 1;

// array of random opening and closing hours
let openingHours = ['08:00:00', '09:00:00', '10:00:00','11:00:00','12:00:00', '13:00:00'];
let closingHours = ['17:00:00','18:00:00','19:00:00','20:00:00','21:00:00','22:00:00', '23:00:00'];

const restaurantGen = (start, end, index) => {
  let writer = csvWriter();
  writer.pipe(fs.createWriteStream(`./database/cassandra/CSV/restaurantInfo${index}.csv`));
  for (let j = start; j < end; j++) {
    writer.write({
      restaurant_id: restaurantId++,
      restaurantName: faker.company.companyName(),
      openingTime: openingHours[Math.floor(Math.random() * (5 - 0 + 1) + 0)],
      closingTime: closingHours[Math.floor(Math.random() * (7 - 0 + 1) + 0)],
      seatingCapacity: Math.floor(Math.random() * (60 - 30 + 1) + 30)
    })
  }
  writer.end();
  console.log('done');
}

const restaurantFileGen = async() => {
  for (let i = 0; i < numDocuments; i++) {
    await restaurantGen(0, chunkSize, i);
  }
};

restaurantFileGen();

