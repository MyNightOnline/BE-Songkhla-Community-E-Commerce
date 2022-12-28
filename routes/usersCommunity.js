const express = require('express')
const router = express.Router()

const userCommuController = require('../controllers/usersCommunity.model')

router.get('/', userCommuController.showUserCommu)
router.get('/:id', userCommuController.showUserCommuById)
router.get('/edit/:id', userCommuController.showEditUserCommuById)
router.post('/', userCommuController.createUserCommu)
router.put('/:id', userCommuController.updateUserCommu)
router.delete('/:id', userCommuController.deleteUserCommu)

module.exports = router