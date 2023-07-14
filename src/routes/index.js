const express = require("express")
const router = express.Router()

router.use("/api/auth/users", require("./users"))
router.use("/api/auth/users-admin", require("./usersAdmin"))
router.use("/api/auth/users-community", require("./usersCommunity"))
router.use("/api/category", require("./category"))
router.use("/api/products", require("./products"))
router.use("/api/payment", require("./payment"))
router.use("/api/slippayment", require("./slippayment"))

router.use("/api/commu", require("./commu"))
router.use("/api/orders", require("./order"))

router.use("/api/auth", require("./auth"))

module.exports = router
