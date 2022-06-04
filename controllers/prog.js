const { pool } = require('../config/config');


/* controller to retrieve programs from database */
exports.getProg = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        const prog_data = 'SELECT * FROM program'
        
        conn.promise().query(prog_data)
        .then(([rows, fields]) => {
            res.render('prog.ejs', {
                pageTitle: "Programms Page",
                prog: rows
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

/* Controller to update a program in the database */
exports.postUpdateProg = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const title = req.body.title;
    const department = req.body.department;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE program SET program_title = ?, department = ? \
        WHERE program_id = ${id}`;

        conn.promise().query(sqlQuery, [title, department])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/prog');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}

exports.postDeleteProg = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM program WHERE program_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/prog');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })

}

/* Controller to create a program in the database */
exports.postProg = (req, res, next) => {

    /* get necessary data sent */
    const title = req.body.title;
    const department = req.body.department;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO program(program_title, department) VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [title, department])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/prog');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}
