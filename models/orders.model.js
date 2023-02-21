const db = require("../config/db.config")

const table = "orders"

const insertOrder = (data, result) => {
  db.query(`INSERT INTO ${table} SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const insertOederDetail = (data, result) => {
  db.query(`INSERT INTO order_details SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

module.exports = {
  insertOrder,
  insertOederDetail,
}
