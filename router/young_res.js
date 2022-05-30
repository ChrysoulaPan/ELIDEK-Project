const express = require('express');
const researcherController = require('../controllers/young_res');

const router = express.Router();

router.get('/', researcherController.getYoungRes);

module.exports = router;