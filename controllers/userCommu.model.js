const UserCommu = require('../models/userCommu.model')

const showUserCommu = (req, res) => {
    UserCommu.getUserCommu((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const createUserCommu = (req, res) => {
    const data = req.body
    UserCommu.checkRepeatUsernameUserCommu(data, (err, results) => {
        if (results[0]['COUNT(username)'] > 0 ) {
            return res.status(500).send({ err: "This user commu already exists." })
        } else {
            UserCommu.insertUserCommu(data, (err, results) => {
                if (err) {
                    res.send(err)
                } else {
                    res.json(results)
                }
            })
        }
    })
}

const updateUserCommu = (req, res) => {
    const data = req.body
    const id = req.params.id
    UserCommu.updateUserCommuById(data, id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const deleteUserCommu = (req, res) => {
    const id = req.params.id
    UserCommu.deleteUserCommuById(id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

module.exports = {
    showUserCommu,
    createUserCommu,
    updateUserCommu,
    deleteUserCommu
}