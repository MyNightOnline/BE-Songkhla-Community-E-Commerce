require("dotenv").config()

const config = {
  dbHost: process.env.DB_HOST || "localhost",
  dbPort: process.env.DB_PORT || 3307,
  dbName: process.env.DB_NAME || "db-shop",
  dbUser: process.env.DB_USER || "root",
  dbPassword: process.env.DB_PASSWORD || "12345678",
  secret: "mynight",
}

module.exports = config
