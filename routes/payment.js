const express = require("express")
const router = express.Router()

const paymentController = require("../controllers/payment.controller")

router.get("/", paymentController.showPayment)
router.get("/:id", paymentController.showPaymentById)
router.post("/", paymentController.createPayment)
router.put("/:id", paymentController.updatePayment)
router.delete("/:id", paymentController.deletePayment)

module.exports = router
