const express = require("express")
const router = express.Router()

const authController = require("../controllers/auth.controller")

router.post("/auth-admin", authController.signinAdmin)
router.post("/auth-user", authController.signinUser)
router.post("/auth-usercommu", authController.signinUserCommu)

module.exports = router
