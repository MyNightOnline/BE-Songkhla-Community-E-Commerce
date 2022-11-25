const db = require('../config/db.config')
const bcrypt = require('bcrypt')
const saltRounds = 10

// ค้นผู้ใช้ทั่วไปทั้งหมด
const getUser = (result) => {
    db.query(`SELECT * FROM us_user`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// ค้นผู้ใช้โดย id
const getUserById = (id, result) => {
    db.query(
        `SELECT * FROM product WHERE us_user = ?`,
        [id],
        (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                result(null, results[0])
            }
        }
    )
}

// เพิ่ม ผู้ใช้ทั่วไป
const insertUser = (data, result) => {
    const salt = bcrypt.genSaltSync(saltRounds)
    data.password = bcrypt.hashSync(data.password, salt)
    db.query(
        `INSERT INTO us_user SET ?`,
        [data], (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                result(null, results[0])
            }
        }
    )
}

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatUsernameUser = (data, result) => {
    db.query(`SELECT COUNT(username) FROM us_user WHERE username = "${data.username}"`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// แก้ไขผู้ใช้ทั่วไปโดย id
const updateUserById = (data, id, result) => {
    db.query(
        `UPDATE us_user SET full_name = ?, telephone = ?, address = ? WHERE user_id = ?`,
        [data.full_name, data.telephone, data.address, id],
        (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                result(null, results[0])
            }
        }
    )
}

// ลบผู้ใช้ทั่วไปโดย id
const deleteUserById = (id, result) => {
    db.query(
        `DELETE FROM us_user WHERE user_id = ?`,
        [id],
        (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                result(null, results[0])
            }
        }
    )
}

module.exports = {
    getUser,
    getUserById,
    insertUser,
    checkRepeatUsernameUser,
    updateUserById,
    deleteUserById
}