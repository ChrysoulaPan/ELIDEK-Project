const express = require('express');
const res_viewController = require('../controllers/res_view');

const router = express.Router();

router.get('/', res_viewController.getResearchers);
router.get('/:value', res_viewController.showForResearcher);

module.exports = router;