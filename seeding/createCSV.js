const fs = require('fs');
const csvWriter = require('csv-write-stream');
let writer = csvWriter();
const faker = require('faker');
let counter = 1;


//Generator Script
const createCSV = () => {
  writer.pipe(fs.createWriteStream('data.csv'));
  for (var i = 0; i < 100; i++) {
    if ( i === 50 || i === 500000 || i === 1000000 || i === 5000000 ) {
      console.log(`Seeded ${i} Records`);
    }
    writer.write({
      id: counter,
    });
    counter++;
  }
  writer.end();
  console.log('CSV Generated');
}

createCSV();