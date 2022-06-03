const { pool } = require('../config/config');

exports.getOrganizations = (req, res, next) => {

    const setOutput = (rows) => {
        var id_array = [];
        var name_array = [];
        for (var i = 0; i < rows.length; i++) {
            id_array.push(rows[i].org_id);
            name_array.push(rows[i].org_name);
        }
        res.render('org_sel.ejs', {
            ids: id_array,
            names: name_array,
        });
    }
    
    let query = 'SELECT org_id, org_name FROM org';
    
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

exports.showForOrganization = (req, res, next) => {

    var value = req.params.value;
    
    const prog_per_org = 'select p.program_id, p.program_title, p.department \
    from program p \
    inner join project r on r.program_id = p.program_id \
    inner join org o on o.org_id = r.org_id \
    where r.org_id = ' + value;
    
    pool.getConnection((err, conn) => {
        
        conn.promise().query(prog_per_org)
        .then(([rows, fields]) => {
            res.render('org_view.ejs', {
                pageTitle: "Programs Page",
                prog: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })
        
}