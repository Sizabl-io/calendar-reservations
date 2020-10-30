const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();

const reservationTimesInfoGen = (start, end) => {
  writer.pipe(fs.createWriteStream(`./database/postgresql/CSV/timesInfo.csv`));
  for (let j = start; j <= end; j++) {
    let format;
    if (j < 10) {
      format = `0${j}`;
    } else {
      format = j;
    }
    writer.write({
      reservation_time: `${format}:00:00`
    })
  }
  writer.end();
  console.log('done');
}

reservationTimesInfoGen(8, 24);