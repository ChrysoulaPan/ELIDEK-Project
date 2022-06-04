const { pool } = require('../config/config');

/* controller to retrieve researchers from database */
exports.getResearcher = (req, res, next) => {


    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        let id_array = [], name_array = [];

        const setOutput = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                id_array.push(rows[i].org_id);
                name_array.push(rows[i].org_name);
            }
        }

        const get_org = 'select org_id, org_name from org';

        conn.query(get_org, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setOutput(rows);
        });
        
        conn.promise().query('SELECT * FROM researcher')
        .then(([rows, fields]) => {
            res.render('researchers.ejs', {
                pageTitle: "Researchers Page",
                researcher: rows,
                org_id: id_array,
                org_name: name_array
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateResearcher = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const name = req.body.name;
    const surname = req.body.surname;
    const sex = req.body.sex;
    const birth_date = req.body.birth_date;
    const work_date = req.body.work_date;
    const organization = req.body.organization;

    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE researcher SET researcher_name = ?, researcher_surname = ?, sex = ? \
        , birth_date = ?, work_date =?, org_id = ? \
        WHERE researcher_id = ${id}`;

        conn.promise().query(sqlQuery, [name, surname, sex, birth_date, work_date, organization])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/researchers');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/researchers'
            });
        })
    })
}

exports.postDeleteResearcher = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM researcher WHERE researcher_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/researchers');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/researchers'
            });
        })
    })

}

exports.postResearcher = (req, res, next) => {

    /* get necessary data sent */
    const name = req.body.name;
    const surname = req.body.surname;
    const sex = req.body.sex;
    const birth_date = req.body.birth_date;
    const work_date = req.body.work_date;
    const organization = req.body.organization;

    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO researcher(researcher_name, researcher_surname, sex, birth_date, work_date, org_id) VALUES(?, ?, ?, ?, ?, ?)`;

        conn.promise().query(sqlQuery, [name, surname, sex, birth_date, work_date, organization])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/researchers');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/researchers'
            });
        })
    })
}