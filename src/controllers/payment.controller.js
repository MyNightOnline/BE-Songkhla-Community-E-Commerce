const Payment = require("../models/payment.model")

const showPayment = (req, res) => {
  Payment.getPayments((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showPaymentById = (req, res) => {
  const id = req.params.id
  Payment.getPaymentById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showPaymentByCommuId = (req, res) => {
  const id = req.params.id
  Payment.getPaymentByCommuId(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const createPayment = (req, res) => {
  const data = req.body
  Payment.insertPayment(data, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const updatePayment = (req, res) => {
  const id = req.params.id
  const data = req.body
  Payment.updatePaymentById(data, id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const deletePayment = (req, res) => {
  const id = req.params.id
  Payment.deletePaymentById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

module.exports = {
  showPayment,
  showPaymentById,
  showPaymentByCommuId,
  createPayment,
  updatePayment,
  deletePayment,
}
