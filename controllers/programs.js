const { pool } = require('../config/config');

/* controller to retrieve researchers from database */
exports.getProgram = (req, res, next) => {


    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM program')
        .then(([rows, fields]) => {
            res.render('programs.ejs', {
                pageTitle: "Programs Page",
                prog: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}