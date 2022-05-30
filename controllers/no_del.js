const { pool } = require('../config/config');

exports.getNoDel = (req, res, next) => {

    const view_no_del = 'drop view if exists no_del; \
    create view no_del as \
    select p.project_id from project p \
    where not exists (select d.del_id from deliverable d where p.project_id = d.project_id);'

    const view_no_del_per_res = 'drop view if exists no_del_per_res; \
    create view no_del_per_res as \
    select r.researcher_id, r.researcher_name, r.researcher_surname, count(*) as proj_count from researcher r \
    inner join researcher_works_on rwo on rwo.researcher_id = r.researcher_id \
    inner join no_del p on p.project_id = rwo.project_id \
    group by researcher_id;'

    const q3_8 = 'select * from no_del_per_res where proj_count >= 5'

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query(view_no_del)
        conn.promise().query(view_no_del_per_res)

        conn.promise().query(q3_8)
        .then(([rows, fields]) => {
            res.render('no_del.ejs', {
                pageTitle: "No Deliverables",
                no_del: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}