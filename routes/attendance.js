//load in dependecies
const express = require('express')
const router = express.Router()
const cors = require('cors')
//import controllers
const { hardware_endpoint, mobile_endpoint } = require('../controllers/attendance')
router.use(cors())

router.post('/mobile', mobile_endpoint) //mobile end point
router.post("/hardware" / hardware_endpoint) //hardware endpoint

module.exports = router