const express = require("express")
const router = express.Router()
const multer = require("multer")

require("dotenv").config()
const mysql = require("mysql2")

const connection = mysql.createConnection({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: "db_test",
  port: process.env.PORT,
})

connection.connect((err) => {
  if (err) {
    return console.error(err)
  }
  console.log("MYSQL Connection successfully. " + process.env.USER + "(Test)")
})

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/images")
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  },
})

const upload = multer({ storage: storage })

router.post("/", upload.single("file"), (req, res) => {
  // req.file is the name of your file in the form above, here 'uploaded_file'
  // req.body will hold the text fields, if there were any
  var imgsrc = "http://localhost:3001/images/" + req.file.originalname
  console.log(imgsrc)
  connection.query(
    `INSERT INTO products (product_image) VALUES ('${imgsrc}')`,
    [imgsrc],
    (err, result) => {
      if (err) throw err
      console.log("file uploaded")
    }
  )
})

module.exports = router
