//import dependencies
const express = require('express');
const path = require('path');

//import routes
const researcher = require('./router/researcher');

//start the express app
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.set('view engine', 'ejs');
app.set('views', 'views');

//import middlewares
app.get('/', (req, res) => res.send('Node App is running!'));
app.use('/researcher', researcher);

// in case an endpoint does not exist must return 404.html
app.use((req, res, next) => { res.status(404).render('404.ejs', { pageTitle: '404' }) })


module.exports = app