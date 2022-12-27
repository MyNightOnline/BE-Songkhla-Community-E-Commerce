const Admin = require('../models/usersAdmin.model')

const showUserAdmin = (req, res) => {
    Admin.getUserAdmin((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const createUserAdmin = (req, res) => {
    const data = req.body
    Admin.checkRepeatUsernameAdmin(data, (err, results) => {
        if (results[0]['COUNT(username)'] > 0 ) {
            return res.status(500).send({ err: "This user already exists." })
        } else {
            Admin.insertUserAdmin(data, (err, results) => {
                if (err) {
                    res.send(err)
                } else {
                    res.json(results)
                }
            })
        }
    })
    
}

const updateUserAdmin = (req, res) => {
    const data = req.body
    const id = req.params.id
    Admin.updateUserAdminById(data, id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const deleteUserAdmin = (req, res) => {
    const id = req.params.id
    Admin.deleteUserAdminById(id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

module.exports = {
    showUserAdmin,
    createUserAdmin,
    updateUserAdmin,
    deleteUserAdmin
}