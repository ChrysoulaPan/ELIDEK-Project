const { pool } = require('../config/config');

exports.getFields = (req, res, next) => {

    const setOutput = (rows) => {
        var id_array = [];
        var name_array = [];
        for (var i = 0; i < rows.length; i++) {
            id_array.push(rows[i].field_id);
            name_array.push(rows[i].field_name);
        }
        //console.log(name_array);
        res.render('fields.ejs', {
            pageTitle: "Fields"
            ids: id_array,
            names: name_array,
        });
    }
    
    let query = 'SELECT field_id, field_name FROM scientific_field';
    
    pool.getConnection((err, conn) => {
        conn.query(query, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setOutput(rows);
        });
    });    

}

exports.showInField = (req, res, next) => {

    let proj_ids = [], proj_titles = [];
    let res_ids = [], res_names = [], res_surnames = [];

        var value = req.params.value;
    
        const view_active = 'drop view if exists active_projects; \
        create view active_projects as \
        select project_id, project_title, fund_ammount \
        from project \
        where start_date <= curdate() and end_date > curdate();';
    
        const proj_field = 'select p.project_id, p.project_title from active_projects p \
        inner join project_field pf on p.project_id = pf.project_id \
        where pf.field_id = ' + value + ' \
        order by p.project_id';
    
        const res_field = 'select r.researcher_id, r.researcher_name, r.researcher_surname from researcher r \
        inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id \
        inner join active_projects p on p.project_id = rwo.project_id \
        inner join project_field pf on p.project_id = pf.project_id \
        where pf.field_id = ' + value + ' \
        order by r.researcher_id';

        function fillProj (rows) {
            for (var i = 0; i < rows.length; i++) {
                proj_ids.push(rows[i].project_id);
                proj_titles.push(rows[i].project_title);
            }
        }

        function fillRes (rows) {
            for (var i = 0; i < rows.length; i++) {
                res_ids.push(rows[i].researcher_id);
                res_names.push(rows[i].researcher_name);
                res_surnames.push(rows[i].researcher_surname);
            }
        }

        pool.getConnection((err, conn) => {
    
            let ProjectPromise = new Promise((resolve, reject) => {
                conn.promise().query(view_active)
                conn.promise().query(proj_field)
                .then(([rows, fields]) => {
                    fillProj(rows);
                    resolve();
                 })
                .then(() => pool.releaseConnection(conn))
                .catch(err => console.log(err))
            })
    
            let ResearcherPromise = new Promise((resolve, reject) => {
                conn.promise().query(view_active)
                conn.promise().query(res_field)
                .then(([rows, fields]) => {
                    fillRes(rows);
                    resolve();
                 })
                .then(() => pool.releaseConnection(conn))
                .catch(err => console.log(err))
            })
    
            Promise.all([ProjectPromise, ResearcherPromise]).then(() => {
                res.render('field_res.ejs', {
                    pageTitle: "Fields Page",
                    proj_ids, proj_titles,
                    res_ids, res_names, res_surnames
                })
            });
        })
}
