const db = require("../config/dbConfig")
const bcrypt = require("bcryptjs")
const jwt = require("jsonwebtoken")
const config = require("../config/config")

const handleError = (res, error, message) => {
  console.error(error)
  return res.send({
    error: error,
    msg: message,
  })
}

const comparePasswordsSync = (password, hashedPassword) => {
  return bcrypt.compareSync(password, hashedPassword)
}

const signinAdmin = (req, res) => {
  console.log(req.body)
  db.query(
    `
        SELECT * FROM users_admin WHERE username = "${req.body.username}"
    `,
    (err, results) => {
      if (err || results == 0) {
        return handleError(res, err, "Password or username is incorrect.")
      }

      const passwordIsValid = comparePasswordsSync(
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
      if (err || results == 0) {
        return handleError(res, err, "Password or username is incorrect.")
      }

      const passwordIsValid = comparePasswordsSync(
        req.body.password,
        results[0].password
      )

      if (!passwordIsValid) {
        return res.status(401).send({
          token: null,
          message: "Invalid Password!",
        })
      }
      token = jwt.sign(
        {
          users_id: results[0].users_id,
          username: results[0].username,
          full_name: results[0].full_name,
          mobile: results[0].mobile,
          address: results[0].address,
        },
        config.secret,
        {
          expiresIn: "1h",
        }
      )

      return res
        .status(200)
        .send({ token, date: Math.floor(Date.now() / 1000) + 60 * 60 })
    }
  )
}

const signinUserCommu = (req, res) => {
  db.query(
    `
        SELECT * FROM users_community WHERE username = "${req.body.username}"
    `,
    (err, results) => {
      if (err || results == 0) {
        return handleError(res, err, "Password or username is incorrect.")
      }

      const passwordIsValid = comparePasswordsSync(
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
            person: results2[0].person,
            address: results2[0].address,
            mobile: results2[0].mobile,
            promptpay: results2[0].promptpay,
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
