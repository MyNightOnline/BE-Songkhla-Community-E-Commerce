const db = require("../config/db.config")

const table = "community"

// ค้นผู้ใช้ทั่วไปทั้งหมด
const getCommu = (result) => {
  db.query(`SELECT * FROM ${table} ORDER BY name`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const getCommuConfirmed = (result) => {
  db.query(
    `SELECT * FROM ${table} WHERE confirm_status != 0 && confirm_status != 3`,
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

const getPending = (result) => {
  db.query(
    `SELECT * FROM ${table} WHERE confirm_status = 0`,
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

// ค้นผู้ใช้โดย id
const getCommuById = (id, result) => {
  db.query(
    `SELECT * FROM community WHERE commu_id = ?`,
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

const getCommuById2 = (id, result) => {
  db.query(
    `SELECT * FROM community WHERE users_commu_id = ?`,
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
const insertCommu = (data, result) => {
  data.status = 0
  db.query(`INSERT INTO ${table} SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results[0])
    }
  })
}

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatCommu = (data, result) => {
  db.query(
    `SELECT COUNT(name) FROM ${table} WHERE name = "${data.name}"`,
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
const updateCommuById = (data, id, result) => {
  db.query(
    `UPDATE ${table} SET ? WHERE commu_id = ${id}`,
    [data],
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
const deleteCommuById = (id, result) => {
  db.query(`DELETE FROM ${table} WHERE commu_id = ?`, [id], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results[0])
    }
  })
}

module.exports = {
  getCommu,
  getCommuConfirmed,
  getPending,
  getCommuById,
  getCommuById2,
  insertCommu,
  checkRepeatCommu,
  updateCommuById,
  deleteCommuById,
}
