const express = require('express');
const researcherController = require('../controllers/researcher');

const router = express.Router();

router.get('/', researcherController.getResearcher);

module.exports = router;