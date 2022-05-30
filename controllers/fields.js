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
            ids: id_array,
            names: name_array,
            len: id_array.length
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

function showProjectFields (value) {

    const view_active = 'drop view if exists active_projects; \
    create view active_projects as \
    select project_id, project_title, fund_ammount \
    from project \
    where start_date <= curdate() and end_date > curdate();'

    const view_proj = 'drop view if exists projects_in_field_f; \
    create view projects_in_field_f as \
    select p.project_id, p.project_title from active_projects p \
    inner join project_field pf on p.project_id = pf.project_id \
    where pf.field_id = ' + value + 'and p.fund_ammount >= 0;'

    const res_field = 'select r.researcher_id, r.researcher_name, r.researcher_surname from researcher r \
    inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id \
    inner join active_projects p on p.project_id = rwo.project_id \
    inner join project_field pf on p.project_id = pf.project_id \
    where pf.field_id = ' + value + ';'

    pool.getConnection((err, conn) => {
        
        conn.promise().query(view_active)
        conn.promise().query(view_proj)

        conn.promise().query(res_field)
        .then(([rows, fields]) => {
            res.render('young_res.ejs', {
                pageTitle: "Young Researchers",
                young_res: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })
}
 