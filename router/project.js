const express = require('express');
const projectController = require('../controllers/project');

const router = express.Router();

router.get('/', projectController.getProject);
router.post('/create', projectController.postProject);
router.post('/update/:id', projectController.postUpdateProject);
router.post('/delete/:id', projectController.postDeleteProject);


module.exports = router;
