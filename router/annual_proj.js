const express = require('express');
const projController = require('../controllers/annual_proj');

const router = express.Router();

router.get('/', projController.getSameAnnual);

module.exports = router;