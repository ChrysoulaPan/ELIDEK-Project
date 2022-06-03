const express = require('express');
const dashboardController = require('../controllers/dash');

const router = express.Router();

router.get('/', dashboardController.getDashboard);
router.get('/:value', dashboardController.showInProject);

module.exports = router;