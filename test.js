const axios = require("axios")



axios.get('https://raw.githubusercontent.com/kongvut/thai-province-data/master/api_province_with_amphure_tambon.json')
.then(function (response) {
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  })
  .finally(function () {
    // always executed
  });