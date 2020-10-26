const faker = require('faker');

const dataGenerator = (userContext, events, done) => {
  const reservationDateId = Math.floor(Math.random() * (90 - 1 + 1) + 1);
  const reservationTimesId = Math.floor(Math.random() * (17 - 1 + 1) + 1);
  const userId = Math.floor(Math.random() * (10000000 - 1 + 1) + 1);
  const numberOfGuests = Math.floor(Math.random() * (6 - 1 + 1) + 1);
  const notes = faker.lorem.sentence();
  userContext.vars.reservation_date_id = reservationDateId;
  userContext.vars.reservation_times_id = reservationTimesId;
  userContext.vars.user_id = userId;
  userContext.vars.number_of_guests = numberOfGuests;
  userContext.vars.notes = notes;
  return done();
};

module.exports = {
  dataGenerator };
