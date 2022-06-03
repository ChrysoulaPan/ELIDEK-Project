const express = require('express');
const programController = require('../controllers/programs');

const router = express.Router();

router.get('/', programController.getProgram);

module.exports = router;