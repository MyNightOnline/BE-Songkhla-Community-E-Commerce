const mysql = require('mysql2')

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456789',
    database: 'product_songkhla',
    port: '3307'
})

connection.connect((err) => {
    if (err) {
        return console.error(err)
    }
    console.log('MYSQL Connection successfully.')
})


const username = 'mynight2'
connection
    .query(`
        SELECT * FROM users WHERE username = '${username}'
    `, (err, result, fields) => {

        console.log(result.length)
    })