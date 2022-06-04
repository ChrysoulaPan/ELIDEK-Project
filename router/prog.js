const express = require('express');
const progController = require('../controllers/prog');

const router = express.Router();

router.get('/', progController.getProg);
router.post('/create', progController.postProg);
router.post('/update/:id', progController.postUpdateProg);
router.post('/delete/:id', progController.postDeleteProg);


module.exports = router;
