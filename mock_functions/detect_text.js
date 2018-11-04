// function convert image to json file including OCR
// WARNING do NOT run many times, use json file already made!!

// Imports the Google Cloud client libraries
const vision = require('@google-cloud/vision').v1p3beta1;
const fs = require('fs');

// Creates a client
const client = new vision.ImageAnnotatorClient();

// set file path
const uri = `/Users/yutafujii/Downloads/japanese_menu.jpg`;
const filePath = `/Users/yutafujii/code/YutaFujii0/menu_scrape/data/japanese_menu.json`;

const request = {
  image: {
    content: fs.readFileSync(uri),
  },
  feature: {
    languageHints: ['en-t-i0-handwrit'],
  },
};

const saveJson = (input, file) => {
  const data = JSON.stringify(input, null, 2);
  fs.writeFile(file, data, 'utf8',
    (err) => {
      if (err) throw err;
      console.log('The file has been saved!');
  });
};

client
  .documentTextDetection(request)
  .then(response => saveJson(response, filePath))
  .catch(err => {
    console.error('ERROR:', err);
  });

// references
// to require @google-cloud/vision, first install it
// (terminal ->)npm install @google-cloud/vision --save
// (how to write json file) https://stackabuse.com/reading-and-writing-json-files-with-node-js/
