// const dbHandler = require('./model.js');

// const getRestaurants = (req, res) => {
//   dbHandler.getRestaurants((err, data) => {
//     if (err) {
//       res.status(400).send(err);
//     } else {
//       res.status(200).send(data);
//     }
//   });
// };

// const addRestaurants = (req, res) => {
//   const { name, age } = req.body;
//   dbHandler.addRestaurants(name, age, (err, data) => {
//     if (err) {
//       res.status(400).send(err);
//     } else {
//       res.status(201).send();
//     }
//   });
// };

// module.exports = {
//   getRestaurants,
//   addRestaurants,
// };
