const db = require("../config/db.config")

const table = "orders"

const getOrders = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const getOrderById = (id, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE order_id = ?`,
    [id],
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

const getPaymentById = (id, result) => {
  db.query(
    `SELECT * FROM payment WHERE payment_id = ?`,
    [id],
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

const getOrderDetailById = (id, result) => {
  db.query(
    `SELECT * FROM order_details WHERE order_id = ?`,
    [id],
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

const updateOrderById = (req, id, result) => {
  db.query(
    `UPDATE ${table} SET ? WHERE order_id = ?`,
    [req.body, id],
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
  getOrders,
  getOrderById,
  getPaymentById,
  getOrderDetailById,
  updateOrderById,
  insertOrder,
  insertOederDetail,
}
