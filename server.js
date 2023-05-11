const express = require("express")
const cors = require("cors")
const app = express()
const PORT = 3001

const fs = require("fs")
const https = require("https")

const server = https.createServer(
  {
    key: fs.readFileSync("./config/cert.key", "utf8"),
    cert: fs.readFileSync("./config/cert.crt", "utf8"),
  },
  app
)

const router = require("./routes")

app.use(express.static("./public"))

app.use(cors())
app.use(express.json())
app.use(
  express.urlencoded({
    extended: false,
  })
)

app.use("/", router)

// app.listen(PORT, () => console.log("Server: http://localhost:3001"))
server.listen(PORT, () => console.log("Server: https://localhost:3001"))

module.exports = app
