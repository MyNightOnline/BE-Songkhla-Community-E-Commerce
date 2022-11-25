const db = require('../config/db.config')

// ค้นสินค้าทั้งหมด
const getProducts = (result) => {
    db.query(`SELECT * FROM product`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// ค้นสินค้าโดย id
const getProductById = (id, result) => {
    db.query(
        `SELECT * FROM product WHERE product_id = ?`,
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
const insertProduct = (data, result) => {
    db.query(
        `INSERT INTO product SET ?`,
        [data], (err, results) => {
            if (err) {
                console.log(err)
                result(err, null)
            } else {
                result(null, results[0])
            }
        }
    )
}

// แก้ไขสินค้าโดย id
const updateProductById = (data, id, result) => {
    db.query(
        `UPDATE product SET product_name = ?, product_price = ? WHERE product_id = ?`,
        [data.product_name, data.product_price, id],
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
        `DELETE FROM product WHERE product_id = ?`,
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
    getProductById,
    insertProduct,
    updateProductById,
    deleteProductById
}