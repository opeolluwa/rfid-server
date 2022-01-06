const express = require('express')
const router = express.Router()
const cors = require('cors')
const { register, login } = require('../controllers/auth')
const validator = require('../middleware')



router.use(cors())
router.post("/register", register)
router.post("/login", validator.validate_admin_login, login) // register user



module.exports = router