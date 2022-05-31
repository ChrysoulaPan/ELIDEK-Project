//import dependencies
const express = require('express');
const path = require('path');

//import routes
const researchers = require('./router/researchers');
const executives = require('./router/executives');
const young_res = require('./router/young_res');
const no_del = require('./router/no_del');
const fields = require('./router/fields');
const annual = require('./router/annual_proj');
const tuples = require('./router/tuples');
//const dash = require('/router/dash');


//start the express app
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.set('view engine', 'ejs');
app.set('views', 'views');

//import middlewares
app.get('/', (req, res) => res.render('fields.ejs'));  //εδω θα μπει το αρχειο της μαριλινας ομως σε ejs
app.use('/researchers', researchers);
app.use('/executives', executives);
app.use('/young', young_res);
app.use('/nodeliverables', no_del);
app.use('/fields', fields);
app.use('/annual_proj', annual);
app.use('/tuples', tuples);
//app.use('/dashboard', dash);


// in case an endpoint does not exist must return 404.html
app.use((req, res, next) => { res.status(404).render('404.ejs', { pageTitle: '404' }) })


module.exports = app;