const db = require("../config/db.config");
const bcrypt = require("bcryptjs");
const saltRounds = 10;

const table = "users_community";

// ค้นผู้ใช้ทั่วไปทั้งหมด
const getUserCommu = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err);
      result(err, null);
    } else {
      result(null, results);
    }
  });
};

// ค้นผู้ใช้โดย id
const getUserCommuById = (id, result) => {
  db.query(
    `SELECT * FROM ${table} WHERE users_commu_id = ?`,
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

// ค้นผู้ใช้โดย id edit
const getEditUserCommuById = (id, result) => {
  db.query(
    `
        SELECT *
        FROM community
        INNER JOIN users_community
        ON community.users_commu_id = users_community.users_commu_id
        WHERE commu_id = ?
        `,
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

// เพิ่ม ผู้ใช้ทั่วไป
const insertUserCommu = async (data, result) => {
  const salt = bcrypt.genSaltSync(saltRounds);
  data.password = bcrypt.hashSync(data.password, salt);

  db.query(
    `
        INSERT INTO ${table} (username, password, full_name) 
        VALUES ("${data.username}", "${data.password}", "${data.full_name}")
        `,
    [data],
    (err, results) => {
      if (err) {
        console.log(err);
        result(err, null);
      } else {
        data.confirm_status == ""
          ? (data.confirm_status = 0)
          : (data.confirm_status = 1);
        db.query(
          `
                    INSERT INTO community (name, address, mobile, regis_code, amp, tam, confirm_status, users_commu_id) 
                    VALUES ("${data.name}","${data.address}","${data.mobile}","${data.regis_code}","${data.amp}","${data.tam}",${data.confirm_status},${results.insertId})
                    `
        );
        result(null, results);
      }
    }
  );
};

// เช็คผู้ดูแลระบบซ้ำ 0 = ไม่มี , 1 = มี
const checkRepeatUsernameUserCommu = (data, result) => {
  db.query(
    `SELECT COUNT(username) FROM ${table} WHERE username = "${data.username}"`,
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

// แก้ไขผู้ใช้ทั่วไปโดย id
const updateUserCommuById = (data, id, result) => {
  db.query(
    `
        SELECT users_community.users_commu_id
        FROM users_community
        INNER JOIN community
        ON users_community.users_commu_id = community.users_commu_id
        WHERE commu_id = ${id}
        `,
    [id],
    (err, results1) => {
      db.query(
        `UPDATE ${table} SET full_name = ? WHERE users_commu_id = ?`,
        [data.full_name, results1[0].users_commu_id],
        (err, results) => {
          if (err) {
            console.log(err);
            result(err, null);
          } else {
            result(null, results[0]);
          }
        }
      );
    }
  );
};

// ลบผู้ใช้ทั่วไปโดย id
const deleteUserCommuById = (id, result) => {
  db.query(`DELETE FROM ${table} WHERE user_id = ?`, [id], (err, results) => {
    if (err) {
      console.log(err);
      result(err, null);
    } else {
      result(null, results[0]);
    }
  });
};

module.exports = {
  getUserCommu,
  getUserCommuById,
  getEditUserCommuById,
  insertUserCommu,
  checkRepeatUsernameUserCommu,
  updateUserCommuById,
  deleteUserCommuById,
};
