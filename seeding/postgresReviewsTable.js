const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();
const faker = require('faker');
let restaurant_id = 1;

//Helper functions
const randomBool = () => {
  const num = Math.floor(Math.random() * 10);
  return num % 2 === 0
    ? true
    : false;
}

//Generate Restaurant Data CSV
const createReviewTableCSV = () => {
  writer.pipe(fs.createWriteStream('ReviewTable.csv'));
  for (var i = 0; i < 10000; i++) {
    for (var j = 0; j < ( 13 + Math.floor(Math.random() * 37)); j++) {
      let date = new Date();
      date = date.toString();
      writer.write({
        restaurant_id: restaurant_id,
        user_id: (1 + Math.floor(Math.random() * 9999)),
        create_date: date,
        description: faker.lorem.paragraph(),
        rating_food: (Math.random() * 5).toFixed(2),
        rating_service: (Math.random() * 5).toFixed(2),
        rating_ambience: (Math.random() * 5).toFixed(2),
        rating_overall: (Math.random() * 5).toFixed(2),
        noise_level: faker.random.arrayElement(['do not recall', 'quiet', 'moderate', 'energetic']),
        would_recommend: randomBool().toString()
      });
    }
    restaurant_id++;
  }
  writer.end();
  console.log('CSV Generated');
}

createReviewTableCSV();