const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();
let faker = require('faker');
let { add, format } = require('date-fns');

let dates = [];
let duration = 90;

// function to generate dates in the future
const generateDates = () => {
  for (let i = 1; i <= duration; i++) {
    let date = add(new Date(2020, 9, 19), {
      days: i
    })
    date = format(date, 'y-MM-d E')
    dates.push(date);
  }
  return dates;
}

const reservationDateGen = (start, end) => {
  writer.pipe(fs.createWriteStream('./database/postgresql/CSV/dateInfo.csv'));
  for (let i = 0; i < end; i++) {
    let splitDate = dates[i].split(' ');
    writer.write({
      reservation_date: splitDate[0],
      reservation_day: splitDate[1]
    })
  }
  writer.end();
  console.log('done');
}

generateDates();
reservationDateGen(0, duration);