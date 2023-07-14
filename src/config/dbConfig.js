const config = require("./config")
const mysql = require("mysql2")

const connection = mysql.createConnection({
  host: config.dbHost,
  user: config.dbUser,
  password: config.dbPassword,
  database: config.dbName,
  port: config.dbPort,
})

connection.connect((err) => {
  if (err) {
    return console.error(err)
  }
  console.log("MYSQL Connection successfully. ")
})

module.exports = connection
