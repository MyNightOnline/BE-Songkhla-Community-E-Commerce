const db = require("../config/db.config")
const bcrypt = require("bcryptjs")

const signinAdmin = (req, res) => {
  db.query(
    `
        SELECT * FROM users_admin WHERE username = "${req.body.username}"
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

module.exports = {
  signinAdmin,
  signinUser,
}
