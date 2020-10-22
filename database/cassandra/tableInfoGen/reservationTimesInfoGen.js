let times = [];

for (let i = 8; i <= 23; i++) {
  let format;
  if (i < 10) {
    format = `0${i}`;
  } else {
    format = i;
  }
    times.push(`${format}:00:00`);
}

module.exports = times;