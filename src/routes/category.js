const express = require('express')
const router = express.Router()

const productTypeController = require('../controllers/category.controller')

router.get('/', productTypeController.showProductType)
router.get('/:id', productTypeController.showProductTypeById)
router.post('/', productTypeController.createProductType)
router.put('/:id', productTypeController.updateProductType)
router.delete('/:id', productTypeController.deleteProductType)

module.exports = router