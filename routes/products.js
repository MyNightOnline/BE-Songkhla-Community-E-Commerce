// https://www.youtube.com/watch?v=6ZQQklg4WLk
const express = require("express")
const router = express.Router()

const productController = require("../controllers/product.controller")

router.get("/", productController.showProducts)
router.get("/admin", productController.showProductsAdmin)
router.get("/home", productController.showProductsHome)
router.get("/:id", productController.showProductById)
router.post("/", productController.createProduct)
router.put("/:id", productController.updateProduct)
router.delete("/:id", productController.deleteProduct)

module.exports = router
