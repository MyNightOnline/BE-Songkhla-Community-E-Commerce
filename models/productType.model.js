const db = require('../config/db.config')

// ค้นประเภทสินค้าทั้งหมด
const getProductType = (result) => {
    db.query(`SELECT * FROM product_type`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// ค้นประเภทสินค้าโดย id
const getProductTypeById = (id, result) => {
    db.query(
        `SELECT * FROM product_type WHERE type_id = ?`,
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

// เพิ่ม ประเภทสินค้า
const insertProductType = (data, result) => {
    db.query(
        `INSERT INTO product_type SET ?`,
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

// เช็คประเภทสินค้าซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatProductType = (data, result) => {
    db.query(`SELECT COUNT(type_name) FROM product_type WHERE type_name = "${data.type_name}"`, (err, results) => {
        if (err) {
            console.log(err)
            result(err, null)
        } else {
            result(null, results)
        }
    })
}

// แก้ไขประเภทสินค้าโดย id
const updateProductTypeById = (data, id, result) => {
    db.query(
        `UPDATE product_type SET type_name = ? WHERE type_id = ?`,
        [data.type_name, id],
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

// ลบประเภทสินค้าโดย id
const deleteProductTypeById = (id, result) => {
    db.query(
        `DELETE FROM product_type WHERE type_id = ?`,
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
    getProductType,
    getProductTypeById,
    insertProductType,
    checkRepeatProductType,
    updateProductTypeById,
    deleteProductTypeById
}