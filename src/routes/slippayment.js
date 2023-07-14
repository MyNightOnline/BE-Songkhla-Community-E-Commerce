const express = require("express")
const multer = require("multer")
const router = express.Router()

const slipPaymentController = require("../controllers/slippayment.controller")

const upload = multer({
  storage: multer.memoryStorage(),
  limits: {
    fileSize: 5 * 1024 * 1024, // 5MB limit per file
  },
})

router.get("/", slipPaymentController.showSlipPayments)
router.post(
  "/",
  upload.fields([{ name: "file", maxCount: 1 }]),
  slipPaymentController.createSlipPayment
)

module.exports = router
