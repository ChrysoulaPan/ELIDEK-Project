const express = require('express');
const fieldController = require('../controllers/fields');

const router = express.Router();

router.get('/', fieldController.getFields);

module.exports = router;