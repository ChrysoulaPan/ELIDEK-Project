const express = require('express');
const executiveController = require('../controllers/executives');

const router = express.Router();

router.get('/', executiveController.getTop5);

module.exports = router;