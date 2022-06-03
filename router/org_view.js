const express = require('express');
const org_viewController = require('../controllers/org_view');

const router = express.Router();

router.get('/', org_viewController.getOrganizations);
router.get('/:value', org_viewController.showForOrganization);

module.exports = router;