const { pool } = require('../config/config');


/* controller to retrieve executives from database */
exports.getExec = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        const exec_data = 'SELECT * FROM executive'
        
        conn.promise().query(exec_data)
        .then(([rows, fields]) => {
            res.render('exec.ejs', {
                pageTitle: "Executives Page",
                exec: rows
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

/* Controller to update an executive in the database */
exports.postUpdateExec = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const name = req.body.name;
    const surname = req.body.surname;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE executive SET ex_name = ?, ex_surname = ? \
        WHERE executive_id = ${id}`;

        conn.promise().query(sqlQuery, [name, surname])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/exec');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}

exports.postDeleteExec = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM executive WHERE executive_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/exec');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })

}

/* Controller to create an executive in the database */
exports.postExec = (req, res, next) => {

    /* get necessary data sent */
    const name = req.body.name;
    const surname = req.body.surname;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO executive(ex_name, ex_surname) VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [name, surname])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/exec');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}
