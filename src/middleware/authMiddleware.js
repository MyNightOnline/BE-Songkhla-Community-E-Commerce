const jwt = require("jsonwebtoken")
const config = require("../config/config")

const authenticateUser = (req, res, next) => {
  const authHeader = req.headers.authorization
  if (!authHeader || !authHeader.startsWith("Bearer ")) {
    return res.status(401).json({ message: "Unauthorized" })
  }

  const token = authHeader.split(" ")[1]

  try {
    const decodedToken = jwt.verify(token, config.secret)

    req.user = decodedToken

    next()
  } catch (error) {
    return res.status(401).json({ message: "Invalid Token" })
  }
}

module.exports = {
  authenticateUser,
}
