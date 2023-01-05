const db = require("../config/db.config")
const authConfig = require("../config/auth.config")
const jwt = require("jsonwebtoken")

const verifyToken = (req, res, next) => {
  console.log(req.body.token)
  let token = req.body.token

  if (!token) {
    return res.status(403).send({
      message: "No token provided!",
    })
  }

  jwt.verify(token, authConfig.secret, (err, decoded) => {
    if (err) {
      return res.status(401).send({
        message: "Unauthorized!",
      })
    }
    res.json(decoded)
    next()
  })
}

const authJwt = {
  verifyToken: verifyToken,
}

module.exports = authJwt
