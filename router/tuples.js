const express = require('express');
const tupleController = require('../controllers/tuples');

const router = express.Router();

router.get('/', tupleController.getTopTuples);

module.exports = router;