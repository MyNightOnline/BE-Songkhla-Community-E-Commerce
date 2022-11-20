const db = require('../config/db.config')
const bcrypt = require('bcrypt')
const saltRounds = 10

// https://mfikri.com/en/blog/nodejs-express-mysql-vue
const getDataAdmin = (result) => {
    db.query(`SELECT * FROM admin`, (err, results) => {
        if (err) {
            console.log(`Error: ${err}`)
        }
        result(null, results)
    })
}

const createAdmin = (data, result) => {
    const salt = bcrypt.genSaltSync(saltRounds)
    data.password = bcrypt.hashSync(data.password, salt)
    db.query(`INSERT INTO admin SET ?`, [data], (err, results) => {
        if (err) {
            console.log(`Error: ${err}`)
        }
        result(null, results)
    })
}

const checkRepeatUsernameAdmin = (data, result) => {
    db.query(`SELECT COUNT(username) FROM admin WHERE username = ${data.username}`, (err, results) => {
        if (err) {
            console.log(`Error: ${err}`)
        }
        result(null, results)
    })
}

const checkAuthAdmin = (data, result) => {
    db.query(``)
}

module.exports = {
    getDataAdmin,
    createAdmin,
    checkRepeatUsernameAdmin
}