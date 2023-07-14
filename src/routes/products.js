// https://www.youtube.com/watch?v=6ZQQklg4WLk
const express = require("express")
const multer = require("multer")
const router = express.Router()

const productController = require("../controllers/product.controller")

const upload = multer({
  storage: multer.memoryStorage(),
  limits: {
    fileSize: 5 * 1024 * 1024, // 5MB limit per file
  },
})

router.get("/", productController.showProducts)
router.get("/admin", productController.showProductsAdmin)
router.get("/home", productController.showProductsHome)
router.get("/shop", productController.showProductsShop)
router.get("/:id", productController.showProductById)
router.post(
  "/",
  upload.fields([
    { name: "file1", maxCount: 1 },
    { name: "file2", maxCount: 1 },
    { name: "file3", maxCount: 1 },
  ]),
  productController.createProduct
)
router.put(
  "/:id",
  upload.fields([
    { name: "file1", maxCount: 1 },
    { name: "file2", maxCount: 1 },
    { name: "file3", maxCount: 1 },
  ]),
  productController.updateProduct
)
router.put("/commu/:id", productController.updateProductCommunityId)
router.put("/qty/:id", productController.updateProductQuantity)
router.delete("/:id", productController.deleteProduct)

module.exports = router
