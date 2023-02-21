const express = require("express")
const router = express.Router()

const orderController = require("../controllers/orders.controller")

router.post("/", orderController.createOrder)
router.post("/detail", orderController.createOrderDetail)

module.exports = router
