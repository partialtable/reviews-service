//Bring in Dependencies
const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();
const faker = require('faker');
const restaurant_id = 1;

//Helper Functions

const randomBool = (random = Math.floor(Math.random() * 10)) => random % 2 === 0 ? true : false;

const generateReviews = () => {
  let result = [];
  for (let i = 0; i < (13 + Math.floor(Math.Random() * 47)); i++) {
    let date = new Date();
    let obj = {};
    obj.user_id = (1 + Math.floor(Math.random() * 9999));
    obj.create_date = date;
    obj.description = faker.lorem.paragraph();
    obj.rating_food = (Math.random() * 5).toFixed(2);
    obj.rating_service = (Math.random() * 5).toFixed(2);
    obj.rating_ambience = (Math.random() * 5).toFixed(2);
    obj.rating_overall = (Math.random() * 5).toFixed(2);
    obj.noise_level = faker.random.arrayElement(['do not recall', 'quiet', 'moderate', 'energetic']);
    obj.would_recommend: randomBool();
    result.push(obj);
  }
  return result;
}

const createRestaurantReviewDocument = async () => {
  writer.pipe(fs.createWriteStream('AvocadoRestaurant.csv'));
  for (var i = 0; i < 10000; i++) {
      const five = Math.random();
      const four = Math.random() * (1 - five);
      const three = Math.random() * (1 - (five + four));
      const two = Math.random() * (1 - (five + four + three));
      const one = Math.random() * (1 - (five + four + three + two));
    }
    restaurant_id++;
  }
  writer.end();
  console.log('CSV Generated');
}

      const five = Math.random();
      const four = Math.random() * (1 - five);
      const three = Math.random() * (1 - (five + four));
      const two = Math.random() * (1 - (five + four + three));
      const one = Math.random() * (1 - (five + four + three + two));
