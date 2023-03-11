const db = require("../config/db.config")
const bcrypt = require("bcryptjs")

const signinAdmin = (req, res) => {
  db.query(
    `
        SELECT * FROM users_admin WHERE username = "${req.body.username}"
    `,
    (err, results) => {
      if (err || results == 0) {
        return res.send({
          msg: "Password or username is incorrect.",
        })
      }

      var passwordIsValid = bcrypt.compareSync(
        req.body.password,
        results[0].password
      )

      if (!passwordIsValid) {
        return res.send({
          msg: "Password or username is incorrect.",
        })
      }

      return res.status(200).send({
        users_admin_id: results[0].users_admin_id,
        username: results[0].username,
        full_name: results[0].full_name,
      })
    }
  )
}

const signinUser = (req, res) => {
  db.query(
    `
        SELECT * FROM users WHERE username = "${req.body.username}"
    `,
    (err, results) => {
      if (err || results == 0)
        return res.send({
          error: err,
          msg: "Password or username is incorrect.",
        })
      var passwordIsValid = bcrypt.compareSync(
        req.body.password,
        results[0].password
      )

      if (!passwordIsValid) {
        return res.status(401).send({
          accessToken: null,
          message: "Invalid Password!",
        })
      }

      return res.status(200).send({
        users_id: results[0].users_id,
        username: results[0].username,
        full_name: results[0].full_name,
        mobile: results[0].mobile,
        address: results[0].address,
      })
    }
  )
}

const signinUserCommu = (req, res) => {
  db.query(
    `
        SELECT * FROM users_community WHERE username = "${req.body.username}"
    `,
    (err, results) => {
      if (err || results == 0)
        return res.send({
          error: err,
          msg: "Password or username is incorrect.",
        })

      var passwordIsValid = bcrypt.compareSync(
        req.body.password,
        results[0].password
      )

      if (!passwordIsValid) {
        return res.status(401).send({
          accessToken: null,
          message: "Invalid Password!",
        })
      }

      db.query(
        `
        SELECT * FROM community WHERE users_commu_id = "${results[0].users_commu_id}"
        `,
        (err, results2) => {
          if (err) throw err

          return res.status(200).send({
            users_commu_id: results[0].users_commu_id,
            username: results[0].username,
            full_name: results[0].full_name,

            commu_id: results2[0].commu_id,
            name: results2[0].name,
            address: results2[0].address,
            mobile: results2[0].mobile,
            regis_code: results2[0].regis_code,
            amp: results2[0].amp,
            tam: results2[0].tam,
            confirm_status: results2[0].confirm_status,
          })
        }
      )
    }
  )
}

module.exports = {
  signinAdmin,
  signinUser,
  signinUserCommu,
}
