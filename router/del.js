const express = require('express');
const delController = require('../controllers/del');

const router = express.Router();

router.get('/', delController.getDel);
router.post('/create', delController.postDel);
router.post('/update/:id', delController.postUpdateDel);
router.post('/delete/:id', delController.postDeleteDel);


module.exports = router;
