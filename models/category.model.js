const db = require("../config/db.config");

const table = "category";

// ค้นประเภทสินค้าทั้งหมด
const getProductType = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err);
      result(err, null);
    } else {
      result(null, results);
    }
  });
};

// ค้นประเภทสินค้าโดย id
const getProductTypeById = (id, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE category_id = ?`,
    [id],
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        result(null, results[0]);
      }
    }
  );
};

// เพิ่ม ประเภทสินค้า
const insertProductType = (data, result) => {
  db.query(`INSERT INTO ${table} SET ?`, [data], (err, results) => {
    if (err) {
      console.log(err);
      result(err, null);
    } else {
      result(null, results[0]);
    }
  });
};

// เช็คประเภทสินค้าซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatProductType = (data, result) => {
  db.query(
    `SELECT COUNT(name) FROM ${table} WHERE name = "${data.name}"`,
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        result(null, results);
      }
    }
  );
};

// แก้ไขประเภทสินค้าโดย id
const updateProductTypeById = (data, id, result) => {
  db.query(
    `UPDATE ${table} SET name = ? WHERE category_id = ?`,
    [data.name, id],
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        result(null, results[0]);
      }
    }
  );
};

// ลบประเภทสินค้าโดย id
const deleteProductTypeById = (id, result) => {
  db.query(
    `DELETE FROM ${table} WHERE category_id = ?`,
    [id],
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        result(null, results[0]);
      }
    }
  );
};

module.exports = {
  getProductType,
  getProductTypeById,
  insertProductType,
  checkRepeatProductType,
  updateProductTypeById,
  deleteProductTypeById,
};
