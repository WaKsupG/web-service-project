const express = require('express')
const router = express.Router()
const indexcontroller = require('./../controller/index.controller')

router.get('/',indexcontroller.get)
router.post('/',indexcontroller.post)
router.put('/',indexcontroller.put)
router.delete('/',indexcontroller.delete)

module.exports = router