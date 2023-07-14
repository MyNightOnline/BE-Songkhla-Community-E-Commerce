const express = require("express")
const router = express.Router()

const authController = require("../controllers/auth.controller")
const authMiddleware = require("../middleware/authMiddleware")

router.post("/auth-admin", authController.signinAdmin)
router.post("/auth-user", authController.signinUser)
router.post("/auth-usercommu", authController.signinUserCommu)

router.get("/protected", authMiddleware.authenticateUser, (req, res) => {
  res.json({ message: "Protected route accessed successfully" })
})

module.exports = router
