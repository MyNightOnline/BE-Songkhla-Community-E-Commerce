// https://www.youtube.com/watch?v=6ZQQklg4WLk
const multer = require("multer")
const express = require("express")
const router = express.Router()

const productController = require("../controllers/product.controller")

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/images")
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  },
})
const upload = multer({ storage: storage })

router.get("/", productController.showProducts)
router.get("/admin", productController.showProductsAdmin)
router.get("/home", productController.showProductsHome)
router.get("/shop/:id", productController.showProductsShop)
router.get("/:id", productController.showProductById)
router.post("/", upload.single("file"), productController.createProduct)
router.put("/:id", upload.single("file"), productController.updateProduct)
router.put("/qty/:id", productController.updateProductQuantity)
router.delete("/:id", productController.deleteProduct)

module.exports = router
