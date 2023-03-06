const db = require("../config/db.config")
const multer = require("multer")
const table = "products"

// ค้นสินค้าทั้งหมด
const getProducts = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

// ค้นสินค้าทั้งหมด Admin
const getProductsAdmin = (result) => {
  db.query(
    `
    SELECT products.name, category.name AS category, community.amp, products.otop FROM products
    INNER JOIN users_community
    ON products.users_commu_id = users_community.users_commu_id
    INNER JOIN community
    ON users_community.users_commu_id = community.users_commu_id
    INNER JOIN category
    ON products.category_id = category.category_id
    ORDER BY name
    ;
    `,
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

const getProductsShop = (id, result) => {
  db.query(
    `
      SELECT * FROM products
      INNER JOIN users_community
      ON users_community.users_commu_id = products.users_commu_id
      WHERE products.users_commu_id = "${id}"
    `,
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

const getProductsHome = (result) => {
  db.query(
    `
    SELECT * FROM products
    INNER JOIN users_community
    ON products.users_commu_id = users_community.users_commu_id
    INNER JOIN category
    ON products.category_id = category.category_id
    ;
    `,
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

// ค้นสินค้าโดย id
const getProductById = (id, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE product_id = ?`,
    [id],
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

// เพิ่ม สินค้า
const insertProduct = (req, result) => {
  req.body.product_image = req.file.originalname
  db.query(`INSERT INTO ${table} SET ?`, [req.body], (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      console.log("upload success")
      result(null, results[0])
    }
  })
}

// เช็คสินค้าซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatProduct = (data, result) => {
  db.query(
    `SELECT COUNT(name) FROM ${table} WHERE name = "${data.name}"`,
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

// แก้ไขสินค้าโดย id
const updateProductById = (req, id, result) => {
  if (req.file) req.body.product_image = req.file.originalname
  else delete req.body.file
  db.query(
    `UPDATE ${table} SET ? WHERE product_id = ?`,
    [req.body, id],
    (err, results) => {
      if (err) {
        console.log(err)
        result(err, null)
      } else {
        console.log("update success")
        result(null, results[0])
      }
    }
  )
}

const updateProductQuantityById = (data, id, result) => {
  db.query(
    `UPDATE ${table} SET quantity = ? WHERE product_id = ?`,
    [data.quantity, id],
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

// ลบสินค้าโดย id
const deleteProductById = (id, result) => {
  db.query(
    `DELETE FROM ${table} WHERE product_id = ?`,
    [id],
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

module.exports = {
  getProducts,
  getProductsAdmin,
  getProductsHome,
  getProductsShop,
  getProductById,
  insertProduct,
  checkRepeatProduct,
  updateProductById,
  updateProductQuantityById,
  deleteProductById,
}
