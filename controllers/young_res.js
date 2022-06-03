const { pool } = require('../config/config');

exports.getYoungRes = (req, res, next) => {

    const view_active_projects = 'drop view if exists active_projects; \
    create view active_projects as \
    select project_id, project_title, fund_ammount \
    from project \
    where start_date <= curdate() and end_date > curdate();'
    
    const view_young_res = 'drop view if exists young_researchers; \
    create view young_researchers as \
    select researcher_id, researcher_name, researcher_surname, extract(year from from_days(age)) as age_in_years \
    from researcher \
    where extract(year from from_days(age)) < 40;'

    const q3_6 = 'select r.researcher_id, r.researcher_name, r.researcher_surname, count(*) as proj_count \
    from young_researchers r \
    inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id \
    inner join active_projects a on a.project_id = rwo.project_id \
    group by r.researcher_id \
    order by proj_count desc \
    limit 10;'

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query(view_young_res)

        conn.promise().query(q3_6)
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
