const express = require('express');
const dashboardController = require('../controllers/dash');

const router = express.Router();

router.get('/', dashboardController.getDashboard);

module.exports = router;