const { pool } = require('../config/config');


/* controller to retrieve organizations from database */
exports.getOrganization = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        const org_data = 'SELECT * FROM org'
        
        conn.promise().query(org_data)
        .then(([rows, fields]) => {
            res.render('organizations.ejs', {
                pageTitle: "Organizations Page",
                org: rows
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

/* Controller to update a student in the database */
exports.postUpdateOrganization = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const abbreviation = req.body.abbreviation;
    const name = req.body.name;
    const road = req.body.road;
    const number = req.body.number;
    const city = req.body.city;
    const category = req.body.category;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE org SET org_abbreviation = ?, org_name = ?, ad_road = ? \
        , ad_number = ?, city = ?, category = ? \
        WHERE org_id = ${id}`;

        conn.promise().query(sqlQuery, [abbreviation, name, road, number, city, category])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/organizations');
        })
        .catch(err => {
            res.redirect('/organizations');
        })
    })
}

exports.postDeleteOrganization = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM org WHERE org_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/organizations');
        })
        .catch(err => {
            res.redirect('/organizations');
        })
    })

}