const { pool } = require('../config/config');

/* controller to retrieve top 5 executives from database */
exports.getSameAnnual = (req, res, next) => {

    const view_annual = 'drop view if exists annual_proj; \
    create view annual_proj as \
    select o.org_id, o.org_name, count(*) as projects, year(p.start_date) as dates \
    from org o \
    inner join project p on o.org_id = p.org_id \
    group by org_id, year(p.start_date);';
    
    const q3_4 = 'select a.org_id, a.org_name, a.projects, b.projects \
    from annual_proj a, annual_proj b \
    where a.org_id = b.org_id and a.dates = b.dates + 1 \
    having a.projects = b.projects and a.projects >= 10;';

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        

        conn.promise().query(view_annual)
        
        conn.promise().query(q3_4)
        .then(([rows, fields]) => {
            res.render('annual_proj.ejs', {
                pageTitle: "Annual Projects",
                org: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}