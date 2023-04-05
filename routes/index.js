const express = require("express")
const router = express.Router()

const userRoutes = require("./users")
const adminRoutes = require("./usersAdmin")
const userCommuRoutes = require("./usersCommunity")
const categoryRoutes = require("./category")
const productsRoutes = require("./products")
const ordersRoutes = require("./order")

const commu = require("./commu")

router.use("/api/auth/users", userRoutes)
router.use("/api/auth/users-admin", adminRoutes)
router.use("/api/auth/users-community", userCommuRoutes)
router.use("/api/category", categoryRoutes)
router.use("/api/products", productsRoutes)

router.use("/api/commu", commu)
router.use("/api/orders", ordersRoutes)

router.use("/api/auth", require("./auth"))

module.exports = router
