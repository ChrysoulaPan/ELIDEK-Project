const express = require('express');
const scientificController = require('../controllers/scientific');

const router = express.Router();

router.get('/', scientificController.getScientific);
router.post('/create', scientificController.postScientific);
router.post('/update/:id', scientificController.postUpdateScientific);
router.post('/delete/:id', scientificController.postDeleteScientific);


module.exports = router;
