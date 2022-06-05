//import dependencies
const express = require('express');
const path = require('path');

//import routes
const researchers = require('./router/researchers');
const del = require('./router/del');
const project = require('./router/project');
const executives = require('./router/executives');
const young_res = require('./router/young_res');
const no_del = require('./router/no_del');
const fields = require('./router/fields');
const annual = require('./router/annual_proj');
const tuples = require('./router/tuples');
const dash = require('./router/dash');
const programs = require('./router/programs');
const res_view = require('./router/res_view');
const org_view = require('./router/org_view');
const organizations = require('./router/organizations');
const exec = require('./router/exec');
const scientific = require('./router/scientific');
const prog = require('./router/prog');

//start the express app
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.set('view engine', 'ejs');
app.set('views', 'views');

//import middlewares
app.get('/', (req, res) => res.render('website.ejs'));  
app.use('/researchers', researchers);
app.use('/del', del);
app.use('/project', project);
app.use('/executives', executives);
app.use('/young_res', young_res);
app.use('/no_del', no_del);
app.use('/fields', fields);
app.use('/annual_proj', annual);
app.use('/tuples', tuples);
app.use('/dashboard', dash);
app.use('/programs', programs);
app.use('/res_view', res_view);
app.use('/org_view', org_view);
app.use('/organizations', organizations);
app.use('/exec', exec);
app.use('/scientific', scientific);
app.use('/prog', prog);

// in case an endpoint does not exist must return 404.html
app.use((req, res, next) => { res.status(404).render('404.ejs', { pageTitle: '404' }) })


module.exports = app;
