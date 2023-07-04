require("dotenv").config()
const mysql = require("mysql2")

const connection = mysql.createConnection({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DATABASE,
  port: process.env.PORT,
  ssl: {
    rejectUnauthorized: true,
  },
})

connection.connect((err) => {
  if (err) {
    return console.error(err)
  }
  console.log("MYSQL Connection successfully. " + process.env.USER)
})

module.exports = connection

/**
 * database: db-shop
 * username: kd6is0ihe4yf81cisw5o
 * host: ap-southeast.connect.psdb.cloud
 * password: pscale_pw_YCOnZTYnMMHfWz7qtWzfzG0E4ejvamZkdYU7aVaogVt
 */
