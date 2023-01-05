const db = require("../config/db.config")
const authConfig = require("../config/auth.config")
const bcrypt = require("bcryptjs")
const saltRounds = 10
const jwt = require("jsonwebtoken")

const table = "users"

// ค้นผู้ใช้ทั่วไปทั้งหมด
const getUser = (result) => {
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
const getUserById = (id, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE users_id = ?`,
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
  db.query(`INSERT INTO ${table} SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, { message: "Success Create User" })
    }
  })
}

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatUsernameUser = (data, result) => {
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

// แก้ไขผู้ใช้ทั่วไปโดย id
const updateUserById = (data, id, result) => {
  db.query(
    `UPDATE ${table} SET full_name = ?, mobile = ?, address = ? WHERE users_id = ?`,
    [data.full_name, data.mobile, data.address, id],
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
  db.query(`DELETE FROM ${table} WHERE users_id = ?`, [id], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results[0])
    }
  })
}

const signInUser = (data, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE username = "${data.username}"`,
    (err, results) => {
      if (err) {
        console.log(err)
      } else if (results.length == 0) {
        result(null, {
          message: "The user or password is incorrect.",
        })
      } else {
        const dataTable = results[0]
        const hash = dataTable.password
        const passwordIsValid = bcrypt.compareSync(data.password, hash)
        if (err) {
          console.log(err)
          result(err, null)
        } else if (!passwordIsValid) {
          result(null, {
            token: null,
            message: "Invalid Password!",
          })
        } else {
          const token = jwt.sign(
            {
              id: dataTable.users_id,
              username: dataTable.username,
              full_name: dataTable.full_name,
              mobile: dataTable.mobile,
              address: dataTable.address,
            },
            authConfig.secret,
            {
              expiresIn: "12h",
            }
          )
          result(null, {
            id: dataTable.users_id,
            username: dataTable.username,
            full_name: dataTable.full_name,
            mobile: dataTable.mobile,
            address: dataTable.address,
            token: token,
          })
        }
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
  deleteUserById,
  signInUser,
}
