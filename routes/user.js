const express = require('express')
const dbConfig = require('../config/db.config')

const router = express.Router()

router.get('/', (req, res) => {
    console.log('hi user')
    // try {
    //     dbConfig.query(`SELECT * FROM users`, (err, result, fields) => {
    //         if (err) {
    //             console.log(err)
    //             return res.status(404).send()
    //         }
    //         res.status(200).json(result)
    //     })
    // } catch (err) {
    //     console.log(err) 
    //     return res.status(500).send()
    // }
})

router.post('/', (req, res) => {
    try {
        const username = req.body.username
        const password = req.body.password
        const firstName = req.body.firstName
        const lastName = req.body.lastName

        const table = 'users'
        // check Duplicate Username and 
        dbConfig.query(`
            INSERT INTO users (username, password, firstName, lastName)
            VALUES ('${username}', '${password}', '${firstName}', '${lastName}')
            ;
        `, (err, result, fields) => {
            if (err) {
                console.log(err)
                return res.status(404).send()
            }
            res.status(200).json("message: Success POST")
        })
    } catch (err) {
        console.log(err) 
        return res.status(500).send()
    }
})

module.exports = router