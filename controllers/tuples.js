const { pool } = require('../config/config');

exports.getTopTuples = (req, res, next) => {
    
    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {

        const view_tuples = 'drop view if exists field_tuple; \
        create view field_tuple as \
        select p1.field_id as field1, p2.field_id as field2, p1.project_id \
        from project_field p1, project_field p2 \
        where p1.project_id = p2.project_id and p1.field_id < p2.field_id;';
        
        const q3_5 = 'select s1.field_name as scientific_field1, t.field1 as id1, s2.field_name as scientific_field2, t.field2 as id2, count(*) as tuple_count \
        from field_tuple t \
        inner join scientific_field s1 on s1.field_id = t.field1 \
        inner join scientific_field s2 on s2.field_id = t.field2 \
        inner join project_field p1 on p1.field_id = t.field1 and p1.project_id = t.project_id \
        inner join project_field p2 on p2.field_id = t.field2 and p1.project_id = p2.project_id \
        group by t.field1, t.field2 \
        order by tuple_count desc \
        limit 3; ';

        conn.promise().query(view_tuples)

        conn.promise().query(q3_5)
        .then(([rows, fields]) => {
            res.render('tuples.ejs', {
                pageTitle: "Field Tuples Page",
                tuples: rows,
            })
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })   

}