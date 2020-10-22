let { add, format } = require('date-fns');

let dates = [];
let duration = 90;

// function to generate dates in the future
const generateDates = () => {
  for (let i = 1; i <= duration; i++) {
    let date = add(new Date(2020, 9, 19), {
      days: i
    })
    date = format(date, 'y-MM-d E');
    date = date.split(' ');
    dates.push([date[0], date[1]]);
  }
  return dates;
}

generateDates();
module.exports = dates;
