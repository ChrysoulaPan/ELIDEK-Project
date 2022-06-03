const { pool } = require('../config/config');

exports.getDashboard = (req, res, next) => {

    let eid_array = [], name_array = [];
    let eval_array = [], eval_pr_array = [];
    let prid_array = [], pr_title_array = [], year_array = [], dur_array = [];
    let pmid_array = [], title_array = [];

    const setExecutives = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            eid_array.push(rows[i].executive_id);
            name_array.push(rows[i].exec_full_name);
        }
    }

    const setEval = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            eval_array.push(rows[i].eval_year);
            eval_pr_array.push(rows[i].program_id);
        }
    }

    const setProjects = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            prid_array.push(rows[i].project_id);
            pr_title_array.push(rows[i].project_title);
            year_array.push(rows[i].start_y);
            dur_array.push(rows[i].duration);
        }
    }

    const setPrograms = (rows) => {
        for (var i = 0; i < rows.length; i++) {
            pmid_array.push(rows[i].program_id);
            title_array.push(rows[i].program_title);
        }
        res.render('dashboard.ejs', {
            res: res,
            eids: eid_array,
            names: name_array,
            eval: eval_array,
            eval_pr: eval_pr_array,
            prids: prid_array,
            pr_titles: pr_title_array,
            st_y: year_array,
            dur: dur_array,
            pmids: pmid_array,
            titles: title_array
        });
    }
    
    let q_exec = "SELECT executive_id, concat(ex_surname, ' ', ex_name) exec_full_name FROM executive ORDER BY executive_id";
    let q_program = "SELECT program_id, program_title FROM program ORDER BY program_id";
    let q_proj = "SELECT project_id, project_title, year(start_date) as start_y, duration FROM project ORDER BY project_id";
    let q_eval = "select year(p.evaluation_date) as eval_year, pr.program_id from project p \
    inner join program pr on p.program_id = pr.program_id \
    order by program_id";
    
    pool.getConnection((err, conn) => {
        conn.query(q_exec, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setExecutives(rows);
        });

        conn.query(q_eval, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setEval(rows);
        });

        conn.query(q_proj, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
              
            // This is the important function
            setProjects(rows);
        });

        conn.query(q_program, (err, rows) => {
            if (err) {
                console.log("internal error", err);
                return;
            }
          
            // This is the important function
            setPrograms(rows);
        });
    }); 
}