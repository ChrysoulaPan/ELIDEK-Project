const { pool } = require('./config/config');
const fs = require('fs');

const dataSQL = fs.readFileSync("./update_res.sql").toString();

pool.getConnection((err, conn) => {
    conn.promise().query(dataSQL)
    .then(() => console.log('Data Inserted'))
    .then(() => pool.releaseConnection(conn))
    .catch(err => console.log(err))
})