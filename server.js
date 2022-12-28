const express = require('express')
const cors = require("cors")
const app = express()
const PORT = 3001

const router = require('./routes')

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({
    extended: false,
}))

app.use('/test', (req,res) => {
    res.send('hello world')
})
app.use('/', router)

app.listen(PORT, () => console.log('Server: http://localhost:3001'))

module.exports = app