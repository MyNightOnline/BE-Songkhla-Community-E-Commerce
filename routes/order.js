const express = require("express")
const router = express.Router()

const orderController = require("../controllers/orders.controller")

router.get("/", orderController.showOrders)
router.get("/:id", orderController.showOrderById)
router.get("/detail/:id", orderController.showOrderDetailById)

router.post("/", orderController.createOrder)
router.post("/detail", orderController.createOrderDetail)

router.put("/:id", orderController.updateOrder)

router.get("/payment/:id", orderController.showPaymentById)

module.exports = router
