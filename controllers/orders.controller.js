const Order = require("../models/orders.model")

const createOrder = (req, res) => {
  const data = req.body
  Order.insertOrder(data, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const createOrderDetail = (req, res) => {
  const data = req.body
  Order.insertOederDetail(data, (err, results) => {
    if (err) return res.send(err)
    res.json(results)
  })
}

module.exports = {
  createOrder,
  createOrderDetail,
}
