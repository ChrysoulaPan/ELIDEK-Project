const { pool } = require('../config/config');

/* controller to retrieve top 5 executives from database */
exports.getTop5 = (req, res, next) => {

    const q3_7 = 'drop view if exists top_5; \
    create view top_5 as \
    select concat(e.ex_surname, " ", e.ex_name) exec_full_name, o.org_name as comp, sum(fund_ammount) total_fund \
    from project p \
    inner join org o on p.org_id = o.org_id \
    inner join executive e on e.executive_id = p.executive_id \
    where o.category = "Company" \
    group by exec_full_name, o.org_name \
    order by total_fund desc \
    limit 5'

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        

        conn.promise().query(q3_7)
        
        conn.promise().query('SELECT * FROM top_5')
        .then(([rows, fields]) => {
            res.render('executives.ejs', {
                pageTitle: "Top 5 Executives",
                exec: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
