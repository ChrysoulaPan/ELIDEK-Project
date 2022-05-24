var mysql = require("mysql2");

var connection = mysql.createConnection({
    host: 'localhost',
    database: 'ELIDEK',
    user: 'root',
    multipleStatements: true
});

module.exports = connection;
