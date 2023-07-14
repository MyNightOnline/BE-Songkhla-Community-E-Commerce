const express = require('express')
const router = express.Router()

const adminController = require('../controllers/usersAdmin.controller.js')

router.get('/', adminController.showUserAdmin)
router.post('/', adminController.createUserAdmin)
router.put('/:id', adminController.updateUserAdmin)
router.delete('/:id', adminController.deleteUserAdmin)

module.exports = router