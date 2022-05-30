const express = require('express');
const no_delController = require('../controllers/no_del');

const router = express.Router();

router.get('/', no_delController.getNoDel);

module.exports = router;