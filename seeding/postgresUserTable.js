const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();
const faker = require('faker');
let restaurant_id = 1;

//Helper functions
const generateRandomPhotoUrl = () => {
  let url = 'https://www.example.com/';
  let random = Math.floor(Math.random() * 1000);
  return url + random.toString();
}

//Generate Restaurant Data CSV
const createUserTableCSV = () => {
  writer.pipe(fs.createWriteStream('UserTable.csv'));
  for (var i = 0; i < 10000; i++) {
    if ( i === 50 || i === 500000 || i === 1000000 || i === 5000000 ) {
      console.log(`Seeded ${i} Records`);
    }
    writer.write({
      first_name: faker.name.firstName(),
      last_name: faker.name.lastName(),
      location: faker.address.city(),
      avatar_url: generateRandomPhotoUrl()
    });
    restaurant_id++;
  }
  writer.end();
  console.log('CSV Generated');
}

createUserTableCSV();