const express = require('express')
const router = express.Router()

const userRoutes = require('./user')
const userCommuRoutes = require('./userCommu')
const commu = require('./commu')
const adminRoutes = require('./admin')
const productRoutes = require('./product')
const productTypeRoutes = require('./productType')

router.use('/api/auth/admin', adminRoutes)
router.use('/api/auth/users', userRoutes)
router.use('/api/auth/user-commu', userCommuRoutes)
router.use('/api/commu', commu)
router.use('/api/products', productRoutes)
router.use('/api/product-type', productTypeRoutes)

module.exports = router