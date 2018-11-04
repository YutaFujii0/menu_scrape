// function to search images of the keyword

// set parameters
let keyword = `あん肝ポン酢`;
const file = `../data/search_for_food.json`;
const SEARCH_ENGINE_ID = ``

// config
const fs = require("fs")
const urlBase = `https://www.googleapis.com/customsearch/v1?&`;
const params = new Map([
  [`apiKey`, `key=API_KEY`],
  [`apiId`, `cx=${SEARCH_ENGINE_ID}`],
  [`query`, `q=${keyword}`]
]);
const url = urlBase + Array.from(params.values()).join(`&`);


const saveJson = (input, file) => {
  const data = JSON.stringify(input, null, 2);
  fs.writeFile(file, data, `utf8`,
    (err) => {
      if (err) throw err;
      console.log(`The file has been saved!`);
    }
  );
};

const gcs = () => {
  gapi.client.init({
    apiKey: ``
  })
    .then(function() {
      return gapi.client.request({
        'path': url
      })
    })
    .then((response) => saveJson(response, file));
};

gcs();
// REFERENCES
// https://developers.google.com/api-client-library/javascript/start/start-js?hl=ja
// https://developer.chrome.com/extensions/content_scripts#execution-environment
