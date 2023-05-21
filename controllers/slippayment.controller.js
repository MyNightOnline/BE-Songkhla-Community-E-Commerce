const slipPayment = require("../models/slippayment.model")

const showSlipPayments = (req, res) => {
  slipPayment.getSlipPayments((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const createSlipPayment = (req, res) => {
  slipPayment.insertSlipPayment(req, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

module.exports = {
  showSlipPayments,
  createSlipPayment,
}
