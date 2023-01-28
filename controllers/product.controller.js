const Product = require("../models/product.model")

const showProducts = (req, res) => {
  Product.getProducts((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showProductsAdmin = (req, res) => {
  Product.getProductsAdmin((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showProductById = (req, res) => {
  Product.getProductById(req.params.id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const createProduct = (req, res) => {
  const data = req.body
  Product.insertProduct(data, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const updateProduct = (req, res) => {
  const data = req.body
  const id = req.params.id
  Product.updateProductById(data, id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const deleteProduct = (req, res) => {
  const id = req.params.id
  Product.deleteProductById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

module.exports = {
  showProducts,
  showProductsAdmin,
  showProductById,
  createProduct,
  updateProduct,
  deleteProduct,
}
