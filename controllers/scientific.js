const { pool } = require('../config/config');


/* controller to retrieve fields from database */
exports.getScientific = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        const scientific_data = 'SELECT * FROM scientific_field'
        
        conn.promise().query(scientific_data)
        .then(([rows, fields]) => {
            res.render('scientific.ejs', {
                pageTitle: "Scientific Fields Page",
                scientific: rows
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

/* Controller to update a fieled in the database */
exports.postUpdateScientific = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const name = req.body.name;
    const descript = req.body.descript;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE scientific_field SET field_name = ?, descript = ? \
        WHERE field_id = ${id}`;

        conn.promise().query(sqlQuery, [name, descript])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/scientific');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}

exports.postDeleteScientific = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM scientific_field WHERE field_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/scientific');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}

/* Controller to create a field in the database */
exports.postScientific = (req, res, next) => {

    /* get necessary data sent */
    const name = req.body.name;
    const descript = req.body.descript;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO scientific_field(field_name, descript) VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [name, descript])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/scientific');
        })
        .catch(err => {
            res.render('error.ejs');
        })
    })
}
