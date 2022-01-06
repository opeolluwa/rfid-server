//load in dependecies
const express = require('express')
const router = express.Router()
const cors = require('cors')
//import controllers and middle ware 
const { hardware_endpoint, mobile_endpoint } = require('../controllers/attendance')
const { validate_auth_token, decode_jwt } = require('../middleware')
router.use(cors())

/*validate auth headers, verify token then give access to resource*/
router.get('/mobile', validate_auth_token, decode_jwt, mobile_endpoint) //mobile end point

/*validate POSTed data, the respond success or error*/
router.post("/hardware" / hardware_endpoint) //hardware endpoint

module.exports = router