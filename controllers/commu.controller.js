const Commu = require('../models/commu.model')

const showCommu = (req, res) => {
    Commu.getCommu((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const confirmed = (req, res) => {
    Commu.getCommuConfirmed((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const pending = (req, res) => {
    Commu.getPending((err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const showCommuById = (req, res) => {
    Commu.getCommuById(req.params.id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const createCommu = (req, res) => {
    const data = req.body
    Commu.checkRepeatCommu(data, (err, results) => {
        if (results[0]['COUNT(commu_name)'] > 0 ) {
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

const updateCommu = (req, res) => {
    const data = req.body
    const id = req.params.id
    Commu.updateCommuById(data, id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

const deleteCommu = (req, res) => {
    const id = req.params.id
    Commu.deleteCommuById(id, (err, results) => {
        if (err) {
            res.send(err)
        } else {
            res.json(results)
        }
    })
}

module.exports = {
    showCommu,
    confirmed,
    pending,
    showCommuById,
    createCommu,
    updateCommu,
    deleteCommu
}