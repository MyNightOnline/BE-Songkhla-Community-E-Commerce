const mysql = require('mysql2')

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456789',
    database: 'shop-songkhla',
    port: '3307'
})

connection.connect((err) => {
    if (err) {
        return console.error(err)
    }
    console.log('MYSQL Connection successfully.')
})

module.exports = connection