const db = require("../config/db.config")

const getPayments = (result) => {
  db.query(`SELECT * FROM bank`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const getPaymentById = (id, result) => {
  db.query(`SELECT * FROM bank WHERE bank_id = '${id}'`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const getPaymentByCommuId = (id, result) => {
  db.query(`SELECT * FROM bank WHERE commu_id = '${id}'`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const insertPayment = (data, result) => {
  db.query(`INSERT INTO bank SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const updatePaymentById = (data, id, result) => {
  db.query(
    `UPDATE bank SET ? WHERE bank_id = ?`,
    [data, id],
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

const deletePaymentById = (id, result) => {
  db.query(`DELETE FROM bank WHERE bank_id = ?`, [id], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results[0])
    }
  })
}

module.exports = {
  getPayments,
  getPaymentById,
  getPaymentByCommuId,
  insertPayment,
  updatePaymentById,
  deletePaymentById,
}
