const { pool } = require('../config/config');

/* controller to retrieve projects from database */
exports.getProject = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        let orgid_array = [], orgname_array = [], progid_array = [], progtitle_array = [], execid_array = [], execsurname_array = [], supid_array = [], evalid_array = [];


        const setOutput1 = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                orgid_array.push(rows[i].org_id);
                orgname_array.push(rows[i].org_name);
            }
        }
        const setOutput2 = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                progid_array.push(rows[i].program_id);
                progtitle_array.push(rows[i].program_title);
            }
        }
        const setOutput3 = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                execid_array.push(rows[i].executive_id);
                execsurname_array.push(rows[i].ex_surname);
            }
        }
        const setOutput4 = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                supid_array.push(rows[i].sup_researcher_id);
            }
        }
        const setOutput5 = (rows) => {
            for (var i = 0; i < rows.length; i++) {
                evalid_array.push(rows[i].eval_researcher_id);
            }
        }

        const get_org = 'select org_id, org_name from org';
        const get_prog = 'select program_id, program_title from program';
        const get_exec = 'select executive_id, ex_surname from executive';
        const get_supres = 'select sup_researcher_id from project';
        const get_evalres = 'select eval_researcher_id from project';


        conn.query(get_org, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
            setOutput1(rows);
        });
        conn.query(get_prog, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
            setOutput2(rows);
        });
        conn.query(get_exec, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
            setOutput3(rows);
        });
        conn.query(get_supres, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
            setOutput4(rows);
        });
        conn.query(get_evalres, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
            setOutput5(rows);
        });
        
        conn.promise().query('SELECT * FROM project')
        .then(([rows, fields]) => {
            res.render('project.ejs', {
                pageTitle: "Projects Page",
                project: rows,
                org_id: orgid_array,
                org_name: orgname_array,
                program_id: progid_array,
                program_title: progtitle_array,
                executive_id: execid_array,
                ex_surname: execsurname_array,
                sup_researcher_id: supid_array,
                eval_researcher_id: evalid_array,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateProject = (req, res, next) => {

    /* get necessary data sent */
    const id = req.body.id;
    const title = req.body.title;
    const summary = req.body.summary;
    const fund_ammount = req.body.fund_ammount;
    const end_date = req.body.end_date;
    const duration = req.body.duration;
    const evaluation_date = req.body.evaluation_date;
    const evaluation_grade = req.body.evaluation_grade;
    const organization = req.body.organization;
    const program = req.body.program;
    const executive = req.body.executive;
    const supres = req.body.supres;
    const evalres = req.body.evalres;

    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE project SET project_title = ?, summry = ?, fund_ammount = ? \
        , end_date = ?, duration =?, evaluation_date = ?, evaluation_grade = ?, org_id = ?, program_id = ?, executive_id = ?, sup_researcher_id = ?, eval_researcher_id = ? \
        WHERE project_id = ${id}`;

        conn.promise().query(sqlQuery, [title, summary, fund_ammount, end_date, duration, evaluation_date, evaluation_grade, organization, program, executive, supres, evalres])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/project');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/project'
            });
        })
    })
}

exports.postDeleteProject = (req, res, next) => {
    /* get id from params */
    const id = req.params.id;
    
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM project WHERE project_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/project');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/project'
            });
        })
    })

}

exports.postProject = (req, res, next) => {

    const id = req.body.id;
    const title = req.body.title;
    const summary = req.body.summary;
    const fund_ammount = req.body.fuda_ammount;
    const end_date = req.body.end_date;
    const duration = req.body.duration;
    const evaluation_date = req.body.evaluation_date;
    const evaluation_grade = req.body.evaluation_grade;
    const organization = req.body.organization;
    const program = req.body.program;
    const executive = req.body.executive;
    const supres = req.body.supres;
    const evalres = req.body.evalres;

    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO project(project_title, summary, fund_ammount, end_date, duration, evaluation_date, evaluation_grade, org_id, program_id, executive_id, sup_researcher_id, eval_researcher_id) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

        conn.promise().query(sqlQuery, [title, summary, fund_ammount, end_date, duration, evaluation_date, evaluation_grade, organization, program, executive, supres, evalres])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/project');
        })
        .catch(err => {
            res.render('error.ejs', {
                url: '/project'
            });
        })
    })
}
