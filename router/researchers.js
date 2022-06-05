const express = require('express');
const researcherController = require('../controllers/researchers');

const router = express.Router();

router.get('/', researcherController.getResearcher);
router.post('/create', researcherController.postResearcher);
router.post('/update/:id', researcherController.postUpdateResearcher);
router.post('/delete/:id', researcherController.postDeleteResearcher);


module.exports = router;
