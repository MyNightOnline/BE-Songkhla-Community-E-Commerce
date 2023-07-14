const ProductType = require("../models/category.model")

const showProductType = (req, res) => {
  ProductType.getProductType((err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const showProductTypeById = (req, res) => {
  ProductType.getProductTypeById(req.params.id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

const createProductType = (req, res) => {
  const data = req.body
  ProductType.checkRepeatProductType(data, (err, results) => {
    if (results[0]["COUNT(name)"] > 0) {
      return res.status(500).send({ err: "This type name already exists." })
    } else {
      ProductType.insertProductType(data, (err, results) => {
        if (err) {
          res.send(err)
        } else {
          res.json(results)
        }
      })
    }
  })
}

const updateProductType = (req, res) => {
  const data = req.body
  const id = req.params.id
  ProductType.checkRepeatProductType(data, (err, results) => {
    if (results[0]["COUNT(name)"] > 0) {
      return res.status(500).send({ err: "This type name already exists." })
    } else {
      ProductType.updateProductTypeById(data, id, (err, results) => {
        if (err) {
          res.send(err)
        } else {
          res.json(results)
        }
      })
    }
  })
}

const deleteProductType = (req, res) => {
  const id = req.params.id
  ProductType.deleteProductTypeById(id, (err, results) => {
    if (err) {
      res.send(err)
    } else {
      res.json(results)
    }
  })
}

module.exports = {
  showProductType,
  showProductTypeById,
  createProductType,
  updateProductType,
  deleteProductType,
}
