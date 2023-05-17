const express = require("express")
const cors = require("cors")
const app = express()
const PORT = 3001

const fs = require("fs")
const https = require("https")

const options = {
  key: fs.readFileSync("./private.key"),
  cert: fs.readFileSync("./certificate.pem"),
}

// Create HTTPS server
const server = https.createServer(options, app)

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

app.listen(3002, () => console.log("Server: http://localhost:3002"))
server.listen(PORT, () => console.log("Server: https://localhost:3001"))

module.exports = app
