const express = require('express')
const router = express.Router()

const userRoutes = require('./user')
const userCommuRoutes = require('./userCommu')
const adminRoutes = require('./admin')
const productRoutes = require('./product')

router.use('/users', userRoutes)
router.use('/user-commu', userCommuRoutes)
router.use('/admin', adminRoutes)
router.use('/products', productRoutes)

module.exports = router