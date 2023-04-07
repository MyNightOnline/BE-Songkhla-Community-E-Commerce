const Order = require("../models/orders.model")

const showOrders = (req, res) => {
  Order.getOrders((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showOrderById = (req, res) => {
  const id = req.params.id
  Order.getOrderById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showPaymentById = (req, res) => {
  const id = req.params.id
  Order.getPaymentById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showOrderDetailById = (req, res) => {
  const id = req.params.id
  Order.getOrderDetailById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const updateOrder = (req, res) => {
  const id = req.params.id

  Order.updateOrderById(req, id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

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
  showOrders,
  showOrderById,
  showPaymentById,
  showOrderDetailById,
  updateOrder,
  createOrder,
  createOrderDetail,
}
