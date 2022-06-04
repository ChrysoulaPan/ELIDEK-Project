const express = require('express');
const execController = require('../controllers/exec');

const router = express.Router();

router.get('/', execController.getExec);
router.post('/create', execController.postExec);
router.post('/update/:id', execController.postUpdateExec);
router.post('/delete/:id', execController.postDeleteExec);


module.exports = router;
