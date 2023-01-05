const express = require("express")
const router = express.Router()

const authJwt = require("../middleware/authJwt")
const userController = require("../controllers/users.controller")

router.get("/", userController.showUser)
router.post("/", userController.createUser)
router.put("/:id", userController.updateUser)
router.delete("/:id", userController.deleteUser)

router.get("/authJwt", [authJwt.verifyToken])
router.post("/login", userController.signInUser)

module.exports = router
