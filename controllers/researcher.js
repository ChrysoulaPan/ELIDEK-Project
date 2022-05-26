const { pool } = require('../config/config');

/* controller to retrieve researchers from database */
exports.getResearcher = (req, res, next) => {


    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT researcher_id, researcher_name, researcher_surname, birth_date FROM researcher')
        .then(([rows, fields]) => {
            res.render('researcher.ejs', {
                pageTitle: "Researchers Page",
                researcher: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}