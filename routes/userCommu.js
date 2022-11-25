const express = require('express')
const router = express.Router()

const userCommuController = require('../controllers/userCommu.model')

router.get('/', userCommuController.showUserCommu)
router.post('/', userCommuController.createUserCommu)
router.put('/:id', userCommuController.updateUserCommu)
router.delete('/:id', userCommuController.deleteUserCommu)

module.exports = router