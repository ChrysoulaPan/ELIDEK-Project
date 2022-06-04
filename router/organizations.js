const express = require('express');
const orgController = require('../controllers/organizations');

const router = express.Router();

router.get('/', orgController.getOrganization);
router.post('/update/:id', orgController.postUpdateOrganization);
router.post('/delete/:id', orgController.postDeleteOrganization);


module.exports = router;