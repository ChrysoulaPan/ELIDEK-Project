const { pool } = require('../config/config');

exports.getResearchers = (req, res, next) => {

    const setOutput = (rows) => {
        var id_array = [];
        var name_array = [];
        for (var i = 0; i < rows.length; i++) {
            id_array.push(rows[i].researcher_id);
            name_array.push(rows[i].researcher_full_name );
        }
        res.render('res_sel.ejs', {
            pageTitle: "Researchers Page",
            ids: id_array,
            names: name_array,
        });
    }
    
    let query = 'SELECT researcher_id, concat(researcher_surname, " ", researcher_name) researcher_full_name FROM researcher';
    
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

exports.showForResearcher = (req, res, next) => {

    var value = req.params.value;
    
    const proj_per_res = 'select p.project_id, p.project_title, p.fund_ammount \
    from project p \
    inner join researcher_works_on rwo on p.project_id = rwo.project_id \
    where rwo.researcher_id = ' + value;
    
    pool.getConnection((err, conn) => {
        
        conn.promise().query(proj_per_res)
        .then(([rows, fields]) => {
            res.render('res_view.ejs', {
                pageTitle: "Projects Page",
                proj: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })
        
}
