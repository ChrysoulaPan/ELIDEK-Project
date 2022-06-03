const { pool } = require('../config/config');

exports.getDashboard = (req, res, next) => {

    let eid_array = [], name_array = [];
    let prid_array = [], pr_title_array = [], year_array = [], dur_array = [], ex_array = [];

    const setExecutives = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            eid_array.push(rows[i].executive_id);
            name_array.push(rows[i].exec_full_name);
        }
    }

    const setProjects = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            prid_array.push(rows[i].project_id);
            pr_title_array.push(rows[i].project_title);
            year_array.push(rows[i].start_y);
            dur_array.push(rows[i].duration);
            ex_array.push(rows[i].executive_id)
        }
        res.render('dashboard.ejs', {
            res: res,
            eids: eid_array,
            names: name_array,
            prids: prid_array,
            pr_titles: pr_title_array,
            st_y: year_array,
            dur: dur_array,
            exec: ex_array
        });
    }

    let q_exec = "SELECT executive_id, concat(ex_surname, ' ', ex_name) exec_full_name FROM executive ORDER BY executive_id";
    let q_proj = "SELECT project_id, project_title, year(start_date) as start_y, duration, executive_id FROM project ORDER BY project_id";
    
    pool.getConnection((err, conn) => {
        conn.query(q_exec, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setExecutives(rows);
        });

        conn.query(q_proj, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setProjects(rows);
        });

    }); 
}

exports.showInProject = (req, res, next) => {

    var value = req.params.value;
    
    const res_in_proj = 'select researcher_id, researcher_name, researcher_surname \
    from researcher r \
    inner join researcher_works_on rwo on r.researcher_id = rwo.researcher_id \
    where rwo.project_id = ' + value;

    pool.getConnection((err, conn) => {
        
        conn.promise().query(res_in_proj)
        .then(([rows, fields]) => {
            res.render('res_in_proj.ejs', {
                pageTitle: "Researchers In Project Page",
                researcher: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })
}