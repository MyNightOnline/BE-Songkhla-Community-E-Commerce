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
const insertProduct = async (req, result) => {
  const admin = require("firebase-admin")
  const serviceAccount = require("../config/serviceAccountKey.json")
  admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    storageBucket: "skru-project-c1214.appspot.com",
  })
  const files = req.files
  try {
    // Upload each file to Firebase Storage
    const urls = await Promise.all(
      Object.values(files).map(async (file) => {
        const bucket = admin.storage().bucket()
        const { originalname } = file[0]
        const newFileName = `images/${Date.now()}_${originalname}`
        const fileRef = bucket.file(newFileName)

        await fileRef.save(file[0].buffer, {
          contentType: file[0].mimetype,
        })

        // Get download URL for the uploaded file
        return await fileRef.getSignedUrl({
          action: "read",
          expires: "03-17-2024",
        })
      })
    )

    // Send the download URLs as a response
    req.body.image_1 = urls[0][0]
    req.body.image_2 = urls[1][0]
    req.body.image_3 = urls[2][0]
    db.query(`INSERT INTO ${table} SET ?`, [req.body], (err, results) => {
      if (err) {
        console.log(err)
        result(err, null)
      } else {
        console.log("upload success")
        result(null, results[0])
      }
    })
  } catch (error) {
    console.error(error)
  }
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
