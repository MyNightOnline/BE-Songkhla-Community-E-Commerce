const db = require('../config/db.config')

const table = 'products'

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
const insertProduct = (data, result) => {
    db.query(
        `INSERT INTO ${table} SET ?`,
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

// เช็คสินค้าซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatProduct = (data, result) => {
    db.query(`SELECT COUNT(name) FROM ${table} WHERE name = "${data.name}"`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// แก้ไขสินค้าโดย id
const updateProductById = (data, id, result) => {
    db.query(
        `UPDATE ${table} SET product_name = ?, product_price = ? WHERE product_id = ?`,
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
    getProductById,
    insertProduct,
    checkRepeatProduct,
    updateProductById,
    deleteProductById
}