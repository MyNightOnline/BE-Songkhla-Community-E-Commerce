/**
 * https://mfikri.com/en/blog/nodejs-express-mysql-vue
 */
const db = require("../config/dbConfig")
const bcrypt = require("bcryptjs")
const saltRounds = 10

const table = "users_admin"

// ค้นผู้ดูแลระบบทั้งหมด
const getUserAdmin = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

// เพิ่มผู้ดูแลระบบ
const insertUserAdmin = (data, result) => {
  const salt = bcrypt.genSaltSync(saltRounds)
  data.password = bcrypt.hashSync(data.password, salt)

  db.query(`INSERT INTO ${table} SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatUsernameAdmin = (data, result) => {
  db.query(
    `SELECT COUNT(username) FROM ${table} WHERE username = "${data.username}"`,
    (err, results) => {
      if (err) {
        console.log(err)
        result(err, null)
      } else {
        result(null, results)
      }
    }
  )
}

// แก้ไขผู้ดูแลระบบโดย id
const updateUserAdminById = (data, id, result) => {
  db.query(
    `UPDATE ${table} SET full_name = ? WHERE users_admin_id = ?`,
    [data.full_name, id],
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

// ลบผู้ดูแลระบบโดย id
const deleteUserAdminById = (id, result) => {
  db.query(
    `DELETE FROM ${table} WHERE users_admin_id = ?`,
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
  getUserAdmin,
  insertUserAdmin,
  checkRepeatUsernameAdmin,
  updateUserAdminById,
  deleteUserAdminById,
}
