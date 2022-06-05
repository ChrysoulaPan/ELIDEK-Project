const { pool } = require('../config/config');

/* controller to retrieve researchers from database */
exports.getDel = (req, res, next) => {


    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        let id_array = [], title_array = [];

        const setOutput = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                id_array.push(rows[i].project_id);
                title_array.push(rows[i].project_name);
            }
        }

        const get_del = 'select project_id, project_title from project';

        conn.query(get_del, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setOutput(rows);
        });
        
        conn.promise().query('SELECT * FROM deliverable')
        .then(([rows, fields]) => {
            res.render('del.ejs', {
                pageTitle: "Deliverables Page",
                deliverable: rows,
                project_id: id_array,
                project_title: title_array
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateDel = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const title = req.body.title;
    const summary = req.body.summary;
    const del_date = req.body.del_date;
    const project = req.body.project;

    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE deliverable SET del_title = ?, del_summary = ? \
        , del_date = ?, project_id = ? \
        WHERE del_id = ${id}`;

        conn.promise().query(sqlQuery, [title, summary, del_date, project])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/del');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/del'
            });
        })
    })
}

exports.postDeleteDel = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM deliverable WHERE del_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/del');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/del'
            });
        })
    })

}

exports.postDel = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const title = req.body.title;
    const summary = req.body.summary;
    const del_date = req.body.del_date;
    const project = req.body.project;

    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO deliverable(del_title, del_summary, del_date, project_id) VALUES(?, ?, ?, ?)`;

        conn.promise().query(sqlQuery, [title, summary, del_date, project])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/del');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/del'
            });
        })
    })
}
