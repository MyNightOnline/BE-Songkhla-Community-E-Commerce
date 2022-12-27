const db = require('../config/db.config')
const bcrypt = require('bcrypt')
const saltRounds = 10

const table = 'users_community'

// ค้นผู้ใช้ทั่วไปทั้งหมด
const getUserCommu = (result) => {
    db.query(`SELECT * FROM ${table}`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// ค้นผู้ใช้โดย id
const getUserCommuById = (id, result) => {
    db.query(
        `SELECT * FROM product WHERE ${table} = ?`,
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
const insertUserCommu = (data, result) => {
    const salt = bcrypt.genSaltSync(saltRounds)
    data.password = bcrypt.hashSync(data.password, salt)
    db.query(
        `
        INSERT INTO ${table} (username, password, full_name) 
        VALUES ("${data.username}", "${data.password}", "${data.full_name}")
        `,
        [data], (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                db.query(
                    `
                    INSERT INTO community (name, address, mobile, regis_code, amp, tam, confirm_status, users_commu_id) 
                    VALUES ("${data.name}","${data.address}","${data.mobile}","${data.regis_code}","${data.amp}","${data.tam}",0,${results.insertId})
                    `,
                )
                result(null, results)
            }
        }
    )
    
}

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatUsernameUserCommu = (data, result) => {
    db.query(`SELECT COUNT(username) FROM ${table} WHERE username = "${data.username}"`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// แก้ไขผู้ใช้ทั่วไปโดย id
const updateUserCommuById = (data, id, result) => {
    db.query(
        `UPDATE ${table} SET commu_name = ?, mobile = ?, address = ? WHERE commu_id = ?`,
        [data.commu_name, data.mobile, data.address, id],
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
const deleteUserCommuById = (id, result) => {
    db.query(
        `DELETE FROM ${table} WHERE user_id = ?`,
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
    getUserCommu,
    getUserCommuById,
    insertUserCommu,
    checkRepeatUsernameUserCommu,
    updateUserCommuById,
    deleteUserCommuById
}