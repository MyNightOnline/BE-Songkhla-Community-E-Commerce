const express = require("express")
const router = express.Router()

const orderController = require("../controllers/orders.controller")

router.get("/", orderController.showOrders)
router.get("/:id", orderController.showOrderById)
router.get("/user/:id", orderController.showOrderByUserId)
router.get("/detail/:id", orderController.showOrderDetailById)
router.get(
  "/detail/users_commu_id/:id",
  orderController.showOrderDetailByusers_commu_id
)

router.post("/", orderController.createOrder)
router.post("/detail", orderController.createOrderDetail)

router.put("/:id", orderController.updateOrder)

router.get("/payment/:id", orderController.showPaymentById)

router.delete("/:id", orderController.delteOrderAndOrderDetails)

module.exports = router
