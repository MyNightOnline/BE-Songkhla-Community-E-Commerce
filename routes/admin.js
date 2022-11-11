const express = require('express')
const adminModel = require('../models/admin.model')

const router = express.Router()

router.get('/', (req, res) => {
    try {
        adminModel.getDataAdmin((err, results) => {
            if (err) {
                res.send(err)
            }
            res.json(results)
        })
    } catch (err) {
        console.log(err)
        return res.status(500).send()
    }
})

router.post('/create', (req, res) => {
    const data = req.body
    try {
        adminModel.checkUsernameAdmin(data, (err, results) => {
            if (err) {
                res.send(err)
            }
            if (results[0]['COUNT(username)'] > 0 ) {
                return res.status(500).send({ err: "This user already exists." })
            }
            return adminModel.createAdmin(data, (err, results) => {
                if (err) {
                    res.send(err)
                }
                res.status(200).send({ success: true });
            })
        })
        
    } catch (err) {
        console.log(err)
        return res.status(500).send()
    }
})

module.exports = router