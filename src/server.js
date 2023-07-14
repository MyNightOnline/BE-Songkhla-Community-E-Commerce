const express = require("express")
const cors = require("cors")

class App {
  constructor() {
    this.app = express()

    this.setupMiddlewares()
  }

  setupMiddlewares() {
    this.app.use(
      express.static("./public"),
      express.json(),
      express.urlencoded({ extended: false })
    )
    this.app.use(cors())
    this.app.use("/", require("./routes"))
  }

  start(port) {
    this.app.listen(Number(port), () => {
      console.log(`Server: http://localhost:${port}/`)
    })
  }
}

module.exports = App
