const User = require('../models/users.model')

const showUser = (req, res) => {
    User.getUser((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const createUser = (req, res) => {
    const data = req.body
    User.checkRepeatUsernameUser(data, (err, results) => {
        if (results[0]['COUNT(username)'] > 0 ) {
            return res.status(500).send({ err: "This username already exists." })
        } else {
            User.insertUser(data, (err, results) => {
                if (err) {
                    res.send(err)
                } else {
                    res.json(results)
                }
            })
        }
    })
}

const updateUser = (req, res) => {
    const data = req.body
    const id = req.params.id
    User.updateUserById(data, id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const deleteUser = (req, res) => {
    const id = req.params.id
    User.deleteUserById(id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

module.exports = {
    showUser,
    createUser,
    updateUser,
    deleteUser
}