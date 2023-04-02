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

const showProductsHome = (req, res) => {
  Product.getProductsHome((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showProductsShop = (req, res) => {
  const id = req.params.id
  Product.getProductsShop(id, (err, results) => {
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
  Product.insertProduct(req, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      console.log("tool")
      res.json(results)
    }
  })
}

const updateProduct = (req, res) => {
  const id = req.params.id
  Product.updateProductById(req, id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const updateProductQuantity = (req, res) => {
  const data = req.body
  const id = req.params.id
  Product.updateProductQuantityById(data, id, (err, results) => {
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
  showProductsHome,
  showProductsShop,
  showProductById,
  createProduct,
  updateProduct,
  updateProductQuantity,
  deleteProduct,
}
