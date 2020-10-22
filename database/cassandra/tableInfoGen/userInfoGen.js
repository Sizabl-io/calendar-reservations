const fs = require('fs');
const csvWriter = require('csv-write-stream');
let faker = require('faker');

let numRecords = 10000000;
let numDocuments = 5;
let chunkSize = numRecords / numDocuments;

let userId = 1;

const userGen = (start, end, index) => {
  let writer = csvWriter();
  writer.pipe(fs.createWriteStream(`./database/cassandra/CSV/userInfo${index}.csv`));
  for (let i = start; i < end; i++) {
    writer.write({
      user_id: userId++,
      username: faker.internet.userName(),
      first_name: faker.name.firstName(),
      last_name: faker.name.lastName(),
      email: faker.internet.email(),
      phone_number: faker.phone.phoneNumber(),
    })
  }
  writer.end();
  console.log('done');
}

const userFileGen = async() => {
  for (let i = 0; i < numDocuments; i++) {
    await userGen(0, chunkSize, i)
  }
}

userFileGen();