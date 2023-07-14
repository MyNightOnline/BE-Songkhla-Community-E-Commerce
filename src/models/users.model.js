const db = require("../config/dbConfig")
const bcrypt = require("bcryptjs")
const saltRounds = 10

const table = "users"

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

const updateUserById = (data, id, result) => {
  if (data.password) {
    const salt = bcrypt.genSaltSync(saltRounds)
    data.password = bcrypt.hashSync(data.password, salt)
  }
  db.query(
    `UPDATE ${table} SET ? WHERE users_id = ?`,
    [data, id],
    (err, results) => {
      if (err) {
        console.log(err)
        result(err, null)
      } else {
        result(null, {
          data,
        })
      }
    }
  )
}

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

module.exports = {
  getUser,
  getUserById,
  insertUser,
  checkRepeatUsernameUser,
  updateUserById,
  deleteUserById,
}
